import 'package:equatable/equatable.dart';

import 'package:anikki/core/core.dart';

class ScheduleEntry extends Equatable {
  final DateTime releaseTime;
  final Media media;
  final int? episodeNumber;

  const ScheduleEntry({
    required this.releaseTime,
    required this.media,
    this.episodeNumber,
  });

  EpisodeInfo? get episodeInfo =>
      episodeNumber != null ? media.getEpisodeInfo(episodeNumber!) : null;

  @override
  List<Object?> get props => [
    releaseTime,
    media,
    episodeNumber,
  ];

  @override
  bool get stringify => true;
}
