import 'dart:convert';

import 'package:equatable/equatable.dart';

class TorrestSettings extends Equatable {
  final int port;

  const TorrestSettings({
    this.port = 15666,
  });

  @override
  List<Object> get props => [
        port,
      ];

  TorrestSettings copyWith({
    int? port,
    String? scheme,
    String? host,
  }) {
    return TorrestSettings(
      port: port ?? this.port,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
    };
  }

  factory TorrestSettings.fromMap(Map<String, dynamic> map) {
    return TorrestSettings(
      port: map['port'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory TorrestSettings.fromJson(String source) =>
      TorrestSettings.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;
}
