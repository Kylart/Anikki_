import 'dart:convert';

import 'package:anikki/core/models/torrent/models.dart';

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

class TorrestRepository extends TorrentRepository {
  TorrestRepository({
    super.username,
    super.password,
    super.client,
    super.uri,
  });

  @override
  Future<Torrent> addTorrent(String magnet) {
    throw UnimplementedError();
  }

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

  Torrent _parseTorrent(dynamic torrent) {
    return Torrent(
      id: torrent['info_hash'],
      hash: torrent['info_hash'],
      totalSize: torrent['size'],
      name: torrent['name'],
      path: '',
      magnet: '',
      progress:
          ((torrent['status']['progress'] as int?)?.toDouble() ?? 0.0) / 100,
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
  Future<bool> removeTorrent(Torrent torrent, [bool deleteLocal = false]) {
    throw UnimplementedError();
  }

  @override
  Future<bool> startTorrent(Torrent torrent) {
    throw UnimplementedError();
  }

  @override
  Future<bool> stopTorrent(Torrent torrent) {
    throw UnimplementedError();
  }

  @override
  Future<bool> streamTorrent(Torrent torrent) {
    throw UnimplementedError();
  }

  Future<void> shutDown() async {
    await _get('/shutdown');
  }
}
