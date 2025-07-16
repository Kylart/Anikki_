import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:http/http.dart';

import 'package:anikki/data/data.dart';

Uint8List _evpBytesToKey(
    Uint8List password, Uint8List salt, int keyLen, int ivLen) {
  final totalLen = keyLen + ivLen;
  Uint8List derived = Uint8List(0);
  Uint8List previous = Uint8List(0);

  while (derived.length < totalLen) {
    final md5Text =
        md5.convert(Uint8List.fromList(previous + password + salt)).bytes;
    derived = Uint8List.fromList(derived + md5Text);
    previous = Uint8List.fromList(md5Text);
  }

  return derived.sublist(0, totalLen);
}

String decryptOpenSsl(String base64Encrypted, String hexPassword) {
  final encryptedBytes = base64.decode(base64Encrypted);

  if (utf8.decode(encryptedBytes.sublist(0, 8)) != 'Salted__') {
    throw Exception("Invalid OpenSSL salt header");
  }

  final salt = encryptedBytes.sublist(8, 16);
  final ciphertext = encryptedBytes.sublist(16);
  final password = Uint8List.fromList(hexPassword.codeUnits);

  final keyIv = _evpBytesToKey(password, Uint8List.fromList(salt), 32, 16);
  final key = keyIv.sublist(0, 32);
  final iv = keyIv.sublist(32, 48);

  final encrypter = encrypt.Encrypter(
    encrypt.AES(
      encrypt.Key(key),
      mode: encrypt.AESMode.cbc,
      padding: 'PKCS7',
    ),
  );

  final decrypted = encrypter.decryptBytes(
    encrypt.Encrypted(Uint8List.fromList(ciphertext)),
    iv: encrypt.IV(iv),
  );

  return utf8.decode(decrypted);
}

class MegaCloud extends Extractor {
  final client = Client();
  final serverName = 'MegaCloud';

  @override
  Future<List<VideoSource>> extract(Uri uri) async {
    final response = await client.get(
      Uri.parse(
        'https://raw.githubusercontent.com/itzzzme/megacloud-keys/refs/heads/main/key.txt',
      ),
    );

    final key = response.body.trim();
    final match = RegExp(r'/([^/?]+)\?').firstMatch(uri.toString());
    final sourceId = match?.group(1);
    if (sourceId == null) {
      throw Exception('Unable to extract sourceId from embed URL');
    }

    final megacloudUrl = Uri.parse(
      'https://megacloud.blog/embed-2/v2/e-1/getSources?id=$sourceId',
    );
    final res = await client.get(megacloudUrl);
    final rawSourceData = jsonDecode(res.body) as Map<String, dynamic>;

    final encrypted = rawSourceData['sources'] as String?;
    if (encrypted == null) {
      throw Exception('Encrypted source missing in response');
    }

    final plaintext = decryptOpenSsl(encrypted, key);
    final decodedSources = jsonDecode(plaintext) as List<dynamic>;

    final subtitles = <VideoSubtitle>[
      for (final subtitle in rawSourceData['tracks'] as List<dynamic>)
        if (subtitle['kind'] == 'captions')
          VideoSubtitle(
            url: subtitle['file'] as String,
            lang: subtitle['label'] as String,
            isDefault: subtitle['default'] as bool? ?? false,
          ),
    ];

    final introStart = rawSourceData['intro']['start'] as int?;
    final introEnd = rawSourceData['intro']['end'] as int?;
    final outroStart = rawSourceData['outro']['start'] as int?;
    final outroEnd = rawSourceData['outro']['end'] as int?;

    return <VideoSource>[
      for (final source in decodedSources)
        VideoSource(
          url: source['file'] as String,
          isM3U8: source['file'].toString().endsWith('.m3u8'),
          subtitles: subtitles,
          introStart: introStart,
          introEnd: introEnd,
          outroStart: outroStart,
          outroEnd: outroEnd,
        ),
    ];
  }
}
