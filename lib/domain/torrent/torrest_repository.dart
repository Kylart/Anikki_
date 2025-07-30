import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';

import 'package:anikki/core/models/torrent/models.dart';
import 'package:path_provider/path_provider.dart';
import 'package:torrest/torrest.dart';

import 'torrent_repository.dart';

final torrestStatesMap = {
  '0': 'Queued',
  '1': 'Checking',
  '2': 'Finding',
  '3': 'Downloading',
  '4': 'Finished',
  '5': 'Seeding',
  '6': 'Allocating',
  '7': 'Checking Resume Data',
  '8': 'Paused',
  '9': 'Buffering',
};

Future<String> _getCPUArchitecture() async {
  if (Platform.isWindows) {
    final info = await Process.run('systeminfo | findstr', ['/I', 'type']);

    if (info.stdout.toString().contains('x86')) {
      return 'x86';
    }

    return 'x64';
  } else {
    final info = await Process.run('uname', ['-m']);
    final cpu = info.stdout.toString().replaceAll('\n', '');
    return cpu;
  }
}

Future<String> _getlibName() async {
  final arch = await _getCPUArchitecture();
  final baseName = 'libanitorrest';

  if (Platform.isMacOS || Platform.isIOS) {
    return '$baseName-darwin-$arch.dylib';
  } else if (Platform.isLinux) {
    return '$baseName-linux-$arch.so';
  } else if (Platform.isAndroid) {
    return '$baseName-android-$arch.so';
  } else if (Platform.isWindows) {
    return '$baseName-windows-$arch.dll';
  }

  throw UnsupportedError('Unsupported platform: ${Platform.operatingSystem}');
}

Future<String> _getDylibPath() async {
  final libName = await _getlibName();

  final asset = await rootBundle.load('assets/torrest/$libName');
  final applicationsDirectory = await getTemporaryDirectory();

  final dylibPath = join(applicationsDirectory.path, 'anikki', libName);
  final file = File(dylibPath);

  await file.create(recursive: true);
  await file.writeAsBytes(asset.buffer.asUint8List());

  return dylibPath;
}

class TorrestRepository extends TorrentRepository {
  TorrestRepository({
    super.username,
    super.password,
    super.client,
    super.uri,
  });

  @override
  Uri get defaultUri => Uri(
        scheme: 'http',
        host: 'localhost',
        port: 15666,
      );

  Future<dynamic> _get(
    String path, {
    Map<String, String>? queryParameters,
  }) async {
    final response = await client.get(
      uri.replace(
        path: path,
        queryParameters: queryParameters,
      ),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode != 200) {
      throw Exception("Could not get $path: ${response.body}");
    }

    return jsonDecode(response.body);
  }

  Future<dynamic> _delete(
    String path, {
    Map<String, String>? queryParameters,
  }) async {
    final response = await client.delete(
      uri.replace(
        path: path,
        queryParameters: queryParameters,
      ),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode != 200) {
      throw Exception("Could not get $path: ${response.body}");
    }

    return jsonDecode(response.body);
  }

  Future<dynamic> _put(
    String path, {
    Object? body,
  }) async {
    final response = await client.put(
      uri.replace(path: path),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode(body),
    );

    if (response.statusCode != 200) {
      throw Exception("Could not get $path: ${response.body}");
    }

    return jsonDecode(response.body);
  }

  Future<dynamic> _post(
    String path, {
    Map<String, String>? queryParameters,
  }) async {
    final response = await client.post(
      uri.replace(
        path: path,
        queryParameters: queryParameters,
      ),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode != 200) {
      throw Exception("Could not get $path: ${response.body}");
    }

    return jsonDecode(response.body);
  }

  Torrent _parseTorrent(dynamic torrent) {
    return Torrent(
      id: torrent['info_hash'],
      hash: torrent['info_hash'],
      totalSize: torrent['size'],
      name: torrent['name'],
      path: '',
      magnet: '',
      progress:
          (double.tryParse('${torrent['status']['progress']}') ?? 0.0) / 100,
      status: torrestStatesMap['${torrent['status']['state']}'] ?? 'Unknown',
      ratio: 0.0,
      seeders: torrent['status']['seeders'] ?? 0,
      leechers: torrent['status']['peers'] ?? 0,
      sizeDownloaded: torrent['status']['total_done'] ?? 0,
    );
  }

  @override
  Future<List<Torrent>> getTorrents() async {
    final torrents = await _get('/torrents', queryParameters: {
      'status': 'true',
    });

    return (torrents as List<dynamic>).map(_parseTorrent).toList();
  }

  @override
  Future<void> login() async {
    return;
  }

  @override
  Future<Torrent> addTorrent(String magnet) async {
    final response = await _post(
      '/add/magnet',
      queryParameters: {
        'uri': magnet,
        'download': 'true',
        'ignore_duplicate': 'true',
      },
    );

    final hash = response['info_hash'];

    final torrents = await getTorrents();
    final torrent = torrents.firstWhere((element) => element.hash == hash);

    return torrent;
  }

  @override
  Future<bool> removeTorrent(
    Torrent torrent, [
    bool deleteLocal = false,
  ]) async {
    await _delete('/torrents/${torrent.hash}', queryParameters: {
      'delete': deleteLocal.toString(),
    });

    return true;
  }

  @override
  Future<bool> startTorrent(Torrent torrent) async {
    await _put('/torrents/${torrent.hash}/resume');
    return true;
  }

  @override
  Future<bool> stopTorrent(Torrent torrent) async {
    await _put('/torrents/${torrent.hash}/pause');
    return true;
  }

  @override
  Future<bool> streamTorrent(Torrent torrent) async {
    return true;
  }

  static Future<String> getStreamUrl(
    TorrestRepository repository,
    Torrent torrent,
  ) async {
    final uri = repository.uri.replace(
      pathSegments: ['torrents', torrent.hash, 'files', '0', 'serve'],
    );

    await repository.client.head(uri);

    return uri.toString();
  }

  Future<void> shutDown() async {
    await _put('/shutdown');
  }

  Future<void> setDownloadPath(String path) async {
    await _put('/settings', body: {
      'download_path': path,
      'torrent_path': join(path, 'torrents'),
    });
  }

  static Future<Torrest> startServer(int port) async {
    final baseDir = await getApplicationDocumentsDirectory();

    final torrest = await Torrest.init(
      await _getDylibPath(),
      port,
      join(baseDir.path, 'anikki', 'torrest_settings.json'),
    );

    torrest.start();

    return torrest;
  }
}
