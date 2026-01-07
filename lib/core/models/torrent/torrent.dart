part of 'models.dart';

class Torrent extends Equatable {
  const Torrent({
    required this.magnet,
    required this.id,
    required this.hash,
    required this.progress,
    required this.status,
    required this.path,
    required this.name,
    this.media,
    this.sizeDownloaded,
    this.totalSize,
    this.ratio,
    this.leechers,
    this.seeders,
    this.estimatedTimeToFinish,
  });

  final Media? media;

  final String magnet;
  final String id;
  final String hash;
  final double progress;
  final String status;
  final String path;
  final String name;
  final int? sizeDownloaded;
  final int? totalSize;
  final double? ratio;
  final int? leechers;
  final int? seeders;
  final Duration? estimatedTimeToFinish;

  Torrent copyWith({
    Media? media,
    String? magnet,
    String? id,
    String? hash,
    double? progress,
    String? status,
    String? path,
    String? name,
    int? sizeDownloaded,
    int? totalSize,
    double? ratio,
    int? leechers,
    int? seeders,
    Duration? estimatedTimeToFinish,
  }) {
    return Torrent(
      media: media ?? this.media,
      magnet: magnet ?? this.magnet,
      id: id ?? this.id,
      hash: hash ?? this.hash,
      progress: progress ?? this.progress,
      status: status ?? this.status,
      path: path ?? this.path,
      name: name ?? this.name,
      sizeDownloaded: sizeDownloaded ?? this.sizeDownloaded,
      totalSize: totalSize ?? this.totalSize,
      ratio: ratio ?? this.ratio,
      leechers: leechers ?? this.leechers,
      seeders: seeders ?? this.seeders,
      estimatedTimeToFinish:
          estimatedTimeToFinish ?? this.estimatedTimeToFinish,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'media': media?.toMap(),
      'magnet': magnet,
      'id': id,
      'hash': hash,
      'progress': progress,
      'status': status,
      'path': path,
      'name': name,
      'sizeDownloaded': sizeDownloaded,
      'totalSize': totalSize,
      'ratio': ratio,
      'leechers': leechers,
      'seeders': seeders,
      'estimatedTimeToFinish': estimatedTimeToFinish?.inSeconds,
    };
  }

  factory Torrent.fromMap(Map<String, dynamic> map) {
    return Torrent(
      media: map['media'] != null
          ? Media.fromMap(map['media'] as Map<String, dynamic>)
          : null,
      magnet: map['magnet'] as String,
      id: map['id'] as String,
      hash: map['hash'] as String,
      progress: map['progress'] as double,
      status: map['status'] as String,
      path: map['path'] as String,
      name: map['name'] as String,
      sizeDownloaded: map['sizeDownloaded'] as int?,
      totalSize: map['totalSize'] as int?,
      ratio: map['ratio'] as double?,
      leechers: map['leechers'] as int?,
      seeders: map['seeders'] as int?,
      estimatedTimeToFinish: map['estimatedTimeToFinish'] != null
          ? Duration(seconds: map['estimatedTimeToFinish'] as int)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Torrent.fromJson(String source) =>
      Torrent.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  List<Object?> get props => [
    media,
    magnet,
    id,
    hash,
    progress,
    status,
    path,
    name,
    sizeDownloaded,
    totalSize,
    ratio,
    leechers,
    seeders,
    estimatedTimeToFinish,
  ];

  @override
  bool get stringify => true;
}
