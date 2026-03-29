import 'dart:convert';

import 'package:anikki/core/core.dart';
import 'package:http/http.dart';

import 'package:anikki/data/data.dart';
import 'package:http/http.dart' as http;

class CannotExtractClientKeyException implements Exception {
  final String message;
  CannotExtractClientKeyException(this.message);

  @override
  String toString() => "CannotExtractClientKeyException: $message";
}

Future<String?> getMegaCloudClientKey(String xrax) async {
  try {
    final uri = Uri.parse('https://megacloud.blog/embed-2/v3/e-1/$xrax');
    final req = await http.get(
      uri,
      headers: {'Referer': 'https://aniwatchtv.to/'},
    );
    final text = req.body;

    final regexList = [
      RegExp(r'<meta name="_gg_fb" content="[a-zA-Z0-9]+">'),
      RegExp(r'<!--\s+_is_th:[0-9a-zA-Z]+\s+-->'),
      RegExp(
        r'<script>window._lk_db\s+=\s+\{[xyz]:\s+["'
        '][a-zA-Z0-9]+["'
        // ignore: unnecessary_string_escapes
        '],\s+[xyz]:\s+["'
        '][a-zA-Z0-9]+["'
        // ignore: unnecessary_string_escapes
        '],\s+[xyz]:\s+["'
        '][a-zA-Z0-9]+["'
        // ignore: unnecessary_string_escapes
        ']\};<\/script>',
      ),
      RegExp(r'<div\s+data-dpi="[0-9a-zA-Z]+"\s*.*><\/div>'),
      RegExp(r'<script nonce="[0-9a-zA-Z]+">'),
      RegExp(
        r'<script>window._xy_ws = ['
        "`][0-9a-zA-Z]+['"
        '];</script>',
      ),
    ];

    final keyRegex = RegExp(r'"[a-zA-Z0-9]+"');
    final lkDbRegex = [
      RegExp(r'x:\s+"[a-zA-Z0-9]+"'),
      RegExp(r'y:\s+"[a-zA-Z0-9]+"'),
      RegExp(r'z:\s+"[a-zA-Z0-9]+"'),
    ];

    RegExpMatch? pass;
    int count = 0;
    for (var i = 0; i < regexList.length; i++) {
      final match = regexList[i].firstMatch(text);
      if (match != null) {
        pass = match;
        count = i;
        break;
      }
    }

    if (pass == null) {
      throw CannotExtractClientKeyException("No matching pattern found");
    }

    String clientKey = "";
    final passStr = pass.group(0)!;

    if (count == 2) {
      // handle lk_db split keys
      final x = lkDbRegex[0].firstMatch(passStr);
      final y = lkDbRegex[1].firstMatch(passStr);
      final z = lkDbRegex[2].firstMatch(passStr);
      if (x == null || y == null || z == null) {
        throw Exception("Failed building client key (xyz)");
      }

      final p1 = keyRegex.firstMatch(x.group(0)!);
      final p2 = keyRegex.firstMatch(y.group(0)!);
      final p3 = keyRegex.firstMatch(z.group(0)!);
      if (p1 == null || p2 == null || p3 == null) {
        throw Exception("Failed building client key (xyz)");
      }

      clientKey = (p1.group(0)! + p2.group(0)! + p3.group(0)!).replaceAll(
        '"',
        '',
      );
    } else if (count == 1) {
      final keytest = RegExp(r':[a-zA-Z0-9]+ ').firstMatch(passStr);
      if (keytest == null) {
        throw Exception("Failed extracting client key (nonce)");
      }
      clientKey = keytest.group(0)!.replaceAll(':', '').replaceAll(' ', '');
    } else {
      final keytest = keyRegex.firstMatch(passStr);
      if (keytest == null) {
        throw Exception("Failed extracting client key");
      }
      clientKey = keytest.group(0)!.replaceAll('"', '');
    }

    return clientKey;
  } catch (err) {
    rethrow;
  }
}

String decryptSrc2(String src, String clientKey, String megacloudKey) {
  int layers = 3;
  String genKey = keygen2(megacloudKey, clientKey);
  String decSrc = utf8.decode(base64.decode(src));
  final charArray = List.generate(95, (i) => String.fromCharCode(32 + i));

  void reverseLayer(int iteration) {
    String layerKey = genKey + iteration.toString();

    BigInt hashVal = BigInt.zero;
    for (int i = 0; i < layerKey.length; i++) {
      hashVal =
          (hashVal * BigInt.from(31) + BigInt.from(layerKey.codeUnitAt(i))) &
          BigInt.from(0xffffffff);
    }
    BigInt seed = hashVal;

    int seedRand(int arg) {
      seed =
          (seed * BigInt.from(1103515245) + BigInt.from(12345)) &
          BigInt.from(0x7fffffff);
      return (seed % BigInt.from(arg)).toInt();
    }

    decSrc = decSrc.split('').map((char) {
      final idx = charArray.indexOf(char);
      if (idx == -1) return char;
      final randNum = seedRand(95);
      final newCharIndex = (idx - randNum + 95) % 95;
      return charArray[newCharIndex];
    }).join();

    decSrc = columnarCipher2(decSrc, layerKey);

    final subValues = seedShuffle2(charArray, layerKey);

    final charMap = <String, String>{};
    for (int i = 0; i < subValues.length; i++) {
      charMap[subValues[i]] = charArray[i];
    }

    decSrc = decSrc.split('').map((c) => charMap[c] ?? c).join();
  }

  for (int i = layers; i > 0; i--) {
    reverseLayer(i);
  }

  final dataLen = int.parse(decSrc.substring(0, 4));
  return decSrc.substring(4, 4 + dataLen);
}

String keygen2(String megacloudKey, String clientKey) {
  final keygenHashMultVal = BigInt.from(31);
  final keygenXORVal = 247;
  final keygenShiftVal = 5;

  String tempKey = megacloudKey + clientKey;

  BigInt hashVal = BigInt.zero;
  for (int i = 0; i < tempKey.length; i++) {
    hashVal =
        BigInt.from(tempKey.codeUnitAt(i)) +
        hashVal * keygenHashMultVal +
        (hashVal << 7) -
        hashVal;
  }

  if (hashVal.isNegative) {
    hashVal = -hashVal;
  }

  int lHash = (hashVal % BigInt.parse('9223372036854775807')).toInt();

  tempKey = tempKey
      .split('')
      .map((c) => String.fromCharCode(c.codeUnitAt(0) ^ keygenXORVal))
      .join('');

  int pivot = (lHash % tempKey.length) + keygenShiftVal;
  tempKey = tempKey.substring(pivot) + tempKey.substring(0, pivot);

  String leafStr = clientKey.split('').reversed.join('');
  String returnKey = '';
  for (
    int i = 0;
    i < (tempKey.length > leafStr.length ? tempKey.length : leafStr.length);
    i++
  ) {
    returnKey +=
        (i < tempKey.length ? tempKey[i] : '') +
        (i < leafStr.length ? leafStr[i] : '');
  }

  returnKey = returnKey.substring(0, 96 + (lHash % 33));

  return returnKey
      .split('')
      .map((c) => String.fromCharCode((c.codeUnitAt(0) % 95) + 32))
      .join('');
}

List<String> seedShuffle2(List<String> characterArray, String iKey) {
  BigInt hashVal = BigInt.zero;
  for (int i = 0; i < iKey.length; i++) {
    hashVal =
        (hashVal * BigInt.from(31) + BigInt.from(iKey.codeUnitAt(i))) &
        BigInt.from(0xffffffff);
  }

  BigInt shuffleNum = hashVal;
  int psudoRand(int arg) {
    shuffleNum =
        (shuffleNum * BigInt.from(1103515245) + BigInt.from(12345)) &
        BigInt.from(0x7fffffff);
    return (shuffleNum % BigInt.from(arg)).toInt();
  }

  final retStr = List<String>.from(characterArray);
  for (int i = retStr.length - 1; i > 0; i--) {
    final swapIndex = psudoRand(i + 1);
    final tmp = retStr[i];
    retStr[i] = retStr[swapIndex];
    retStr[swapIndex] = tmp;
  }
  return retStr;
}

String columnarCipher2(String src, String iKey) {
  int columnCount = iKey.length;
  int rowCount = (src.length / columnCount).ceil();

  final cipherArry = List.generate(
    rowCount,
    (_) => List.filled(columnCount, ' '),
  );

  final keyMap = List.generate(iKey.length, (i) => {'char': iKey[i], 'idx': i});

  final sortedMap = List<Map<String, dynamic>>.from(keyMap)
    ..sort(
      (a, b) =>
          (a['char'] as String).codeUnitAt(0) -
          (b['char'] as String).codeUnitAt(0),
    );

  int srcIndex = 0;
  for (final map in sortedMap) {
    final index = map['idx'] as int;
    for (int i = 0; i < rowCount; i++) {
      if (srcIndex < src.length) {
        cipherArry[i][index] = src[srcIndex++];
      }
    }
  }

  final buffer = StringBuffer();
  for (int x = 0; x < rowCount; x++) {
    for (int y = 0; y < columnCount; y++) {
      buffer.write(cipherArry[x][y]);
    }
  }

  return buffer.toString();
}

class MegaCloud extends Extractor {
  final client = Client();
  final serverName = 'MegaCloud';

  @override
  Future<List<VideoSource>> extract(Uri uri, [retryCount = 0]) async {
    try {
      // Get the megacloudKey from GitHub
      final keyResponse = await http.get(
        Uri.parse(
          "https://raw.githubusercontent.com/yogesh-hacker/yogesh-hacker/refs/heads/main/yogesh-hacker/Megacloud/keys.json",
        ),
      );
      final keyData = jsonDecode(keyResponse.body);
      final megacloudKey = keyData["mega"];

      // Extract sourceId from the embed URL
      final match = RegExp(r'/([^/?]+)\?').firstMatch(uri.toString());
      final sourceId = match?.group(1);
      if (sourceId == null) {
        throw Exception("Unable to extract sourceId from embed URL");
      }

      // Get client key
      final clientKey = await getMegaCloudClientKey(sourceId);
      if (clientKey == null) {
        throw Exception("Unable to extract client key from iframe");
      }

      // Fetch sources
      final megacloudUrl =
          'https://megacloud.blog/embed-2/v3/e-1/getSources?id=$sourceId&_k=$clientKey';
      final sourceResponse = await http.get(Uri.parse(megacloudUrl));
      final rawSourceData = jsonDecode(sourceResponse.body);

      dynamic decryptedSources;
      if (!(rawSourceData["encrypted"] ?? false)) {
        decryptedSources = rawSourceData["sources"];
      } else {
        final encrypted = rawSourceData["sources"];
        if (encrypted == null) {
          throw Exception("Encrypted source missing in response");
        }

        final decrypted = decryptSrc2(encrypted, clientKey, megacloudKey);
        try {
          decryptedSources = jsonDecode(decrypted);
        } catch (e) {
          throw Exception("Decrypted data is not valid JSON");
        }
      }

      return <VideoSource>[
        VideoSource(
          url: decryptedSources[0]['file'],
          isM3U8: decryptedSources[0]['type'] == 'hls',
          introStart: rawSourceData['intro']?['start'],
          introEnd: rawSourceData['intro']?['end'],
          outroStart: rawSourceData['outro']?['start'],
          outroEnd: rawSourceData['outro']?['end'],
          subtitles: (rawSourceData['tracks'] as List?)
              ?.where((track) => track['kind'] == 'captions')
              .map(
                (track) => VideoSubtitle(
                  url: track['file'],
                  lang: track['label'],
                  isDefault: track['default'] == true,
                ),
              )
              .toList(),
        ),
      ];
    } on CannotExtractClientKeyException {
      if (retryCount < 5) {
        logger.verbose(
          '[MegaCloud] Retrying to extract client key... Attempt ${retryCount + 1}',
        );
        return extract(uri, retryCount + 1);
      } else {
        rethrow;
      }
    }
  }
}
