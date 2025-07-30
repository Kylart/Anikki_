import 'dart:convert';

import 'package:equatable/equatable.dart';

class HistoryEntry extends Equatable {
  const HistoryEntry({
    required this.date,
    required this.text,
    this.episode,
  });

  final DateTime date;
  final int? episode;
  final String text;

  factory HistoryEntry.fromMap(Map<String, dynamic> map) {
    return HistoryEntry(
      date: DateTime.parse(map['date'] as String),
      episode: map['episode'] as int?,
      text: map['text'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'date': date.toIso8601String(),
      'episode': episode,
      'text': text,
    };
  }

  factory HistoryEntry.fromJson(String source) {
    final map = jsonDecode(source) as Map<String, dynamic>;
    return HistoryEntry.fromMap(map);
  }

  String toJson() {
    return jsonEncode(toMap());
  }

  @override
  List<Object?> get props => [
        date,
        episode,
        text,
      ];

  @override
  bool? get stringify => true;
}
