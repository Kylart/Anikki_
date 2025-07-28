import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart' as encrypt;
import 'package:html/parser.dart';
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
    final epId = uri.queryParameters['ep'];
    final iframe = await client.get(
      Uri.parse('https://megaplay.buzz/stream/s-2/$epId/sub'),
      headers: {
        'Host': "megaplay.buzz",
        "User-Agent":
            "Mozilla/5.0 (X11; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0",
        'Accept':
            "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        "Accept-Language": "en-US,en;q=0.5",
        'DNT': "1",
        "Sec-GPC": "1",
        'Connection': "keep-alive",
        'Referer': "https://megaplay.buzz/api",
        "Upgrade-Insecure-Requests": "1",
        "Sec-Fetch-Dest": "iframe",
        "Sec-Fetch-Mode": "navigate",
        "Sec-Fetch-Site": "same-origin",
        "Sec-Fetch-User": "?1",
        'Priority': "u=4",
        'TE': "trailers",
      },
    );

    final document = parse(iframe.body);
    final id =
        document.querySelector('#megaplay-player')?.attributes['data-id'];

    if (id == null) {
      throw Exception('Unable to extract sourceId from embed URL');
    }

    final sources = await client.get(
      Uri.parse('https://megaplay.buzz/stream/getSources?id=$id&id=$id'),
      headers: {
        'Host': "megaplay.buzz",
        'User-Agent':
            "Mozilla/5.0 (X11; Linux x86_64; rv:140.0) Gecko/20100101 Firefox/140.0",
        'Accept': "application/json, text/javascript, */*; q=0.01",
        "Accept-Language": "en-US,en;q=0.5",
        'Accept-Encoding': "gzip, deflate, br, zstd",
        'X-Requested-With': "XMLHttpRequest",
        'DNT': "1",
        'Sec-GPC': "1",
        'Connection': "keep-alive",
        'Referer': "https://megaplay.buzz/stream/s-2/141679/sub",
        'Sec-Fetch-Dest': "empty",
        'Sec-Fetch-Mode': "cors",
        'Sec-Fetch-Site': "same-origin",
        'TE': "trailers",
      },
    );

    final rawSourceData = jsonDecode(sources.body) as Map<String, dynamic>;

    final introStart = rawSourceData['intro']['start'] as int?;
    final introEnd = rawSourceData['intro']['end'] as int?;
    final outroStart = rawSourceData['outro']['start'] as int?;
    final outroEnd = rawSourceData['outro']['end'] as int?;
    final tracks = rawSourceData['tracks'] as List<dynamic>;
    final subtitles =
        tracks.where((track) => track['kind'] == 'captions').map((track) {
      final file = track['file'] as String;
      final label = track['label'] as String?;
      return VideoSubtitle(
        url: file,
        lang: label ?? 'unknown',
        isDefault: track['default'] as bool? ?? false,
        id: label,
      );
    }).toList();

    return <VideoSource>[
      VideoSource(
        url: rawSourceData['sources']['file'] as String,
        isM3U8: true,
        introStart: introStart,
        introEnd: introEnd,
        outroStart: outroStart,
        outroEnd: outroEnd,
        subtitles: subtitles,
      ),
    ];
  }
}
