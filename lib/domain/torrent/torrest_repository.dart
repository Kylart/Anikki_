import 'dart:convert';
import 'dart:io';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:system_info2/system_info2.dart';
import 'package:torrest/torrest.dart';
import 'package:win32/win32.dart';

import 'package:anikki/core/core.dart';

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

Future<String> _getWindowsArchitecture() async {
  if (!Platform.isWindows) throw UnsupportedError('Unsupported platform');

  final systemInfo = calloc<SYSTEM_INFO>();

  try {
    GetSystemInfo(systemInfo);

    final architecture = systemInfo.ref.wProcessorArchitecture;

    return switch (architecture) {
      PROCESSOR_ARCHITECTURE_AMD64 ||
      PROCESSOR_ARCHITECTURE_ARM64 ||
      PROCESSOR_ARCHITECTURE_ARM ||
      PROCESSOR_ARCHITECTURE_IA64 =>
        'x64',
      PROCESSOR_ARCHITECTURE_INTEL => 'x86',

      /// We set default to x86 on Winodows becuase it can also run on x64
      _ => 'x86',
    };
  } finally {
    free(systemInfo);
  }
}

Future<String?> _getCPUArchitecture() async {
  if (Platform.isWindows) {
    return await _getWindowsArchitecture();
  } else {
    return switch (SysInfo.kernelArchitecture) {
      ProcessorArchitecture.arm64 => 'arm64',
      ProcessorArchitecture.arm => 'arm',
      ProcessorArchitecture.ia64 => 'x64',
      ProcessorArchitecture.x86 => 'x86',
      ProcessorArchitecture.x86_64 => 'x64',
      _ => null,
    };
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
  final applicationsDirectory = await getApplicationDocumentsDirectory();

  final dylibPath = join(applicationsDirectory.path, 'anikki', libName);
  final file = File(dylibPath);

  if (await file.exists()) {
    await file.delete().catchError(
      (e) {
        logger.warning(
          'Failed to delete torrest previous lib, rewriting it',
          e,
        );

        return file;
      },
    );
  } else {
    await file.create(recursive: true);
  }

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
    final currentSettings = await _get('/settings');
    await _put(
      '/settings',
      body: {
        ...currentSettings,
        'download_path': path,
        'torrent_path': join(path, 'torrents'),
      },
    );
  }

  static Future<Torrest> startServer(int port) async {
    final baseDir = await getApplicationDocumentsDirectory();
    final downloadDir = (await getDownloadsDirectory())?.path ?? 'downloads';

    final logsPath = join(baseDir.path, 'anikki', 'torrest', 'logs.json');
    final settingsPath =
        join(baseDir.path, 'anikki', 'torrest', 'settings.json');

    /// Creates default settings file if it does not exist
    final settingsFile = File(settingsPath);
    if (!await settingsFile.exists()) {
      await settingsFile.create(recursive: true);
      await settingsFile.writeAsString(
        jsonEncode(
          {
            "active_checking_limit": 1,
            "active_dht_limit": 88,
            "active_downloads_limit": 3,
            "active_limit": 500,
            "active_lsd_limit": 60,
            "active_seeds_limit": 5,
            "active_tracker_limit": 1600,
            "alerts_log_level": 5,
            "api_log_level": 4,
            "buffer_size": 20971520,
            "check_available_space": true,
            "connections_limit": 0,
            "disable_dht": false,
            "disable_lsd": false,
            "disable_natpmp": false,
            "disable_upnp": false,
            "download_path": downloadDir,
            "encryption_policy": 0,
            "limit_after_buffering": false,
            "listen_interfaces": "",
            "listen_port": 6889,
            "max_download_rate": 0,
            "max_upload_rate": 0,
            "outgoing_interfaces": "",
            "piece_expiration": 5,
            "piece_wait_timeout": 60,
            "proxy": null,
            "seed_time_limit": 0,
            "seed_time_ratio_limit": 0,
            "service_log_level": 2,
            "session_save": 30,
            "share_ratio_limit": 0,
            "torrents_path": "$downloadDir/torrents",
            "tuned_storage": false,
            "user_agent": "",
            "write_mode": 0
          },
        ),
      );
    }

    final torrest = await Torrest.init(
      await _getDylibPath(),
      port,
      settingsPath,
      logsPath,
    );

    torrest.start();

    return torrest;
  }
}
