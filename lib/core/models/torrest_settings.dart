import 'dart:convert';

import 'package:equatable/equatable.dart';

class TorrestSettings extends Equatable {
  final int port;
  final String? downloadPath;

  const TorrestSettings({
    this.port = 15666,
    this.downloadPath,
  });

  @override
  List<Object?> get props => [
        port,
        downloadPath,
      ];

  TorrestSettings copyWith({
    int? port,
    String? downloadPath,
  }) {
    return TorrestSettings(
      port: port ?? this.port,
      downloadPath: downloadPath ?? this.downloadPath,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'downloadPath': downloadPath,
    };
  }

  factory TorrestSettings.fromMap(Map<String, dynamic> map) {
    return TorrestSettings(
      port: map['port'] as int,
      downloadPath: map['download_path'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory TorrestSettings.fromJson(String source) =>
      TorrestSettings.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;
}
