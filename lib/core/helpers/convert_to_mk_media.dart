import 'package:media_kit/media_kit.dart' as mk;

import 'package:anikki/core/core.dart';

mk.Media convertToMkMedia(LocalFile file) {
  final episodeNumber = file.episode;
  final episodeInfo =
      episodeNumber != null ? file.media?.getEpisodeInfo(episodeNumber) : null;

  final title = episodeInfo?.formattedTitle ??
      [
        file.media?.title ?? file.title ?? file.path,
        if (episodeNumber != null) 'Episode $episodeNumber'
      ].join(' - ');

  return mk.Media(
    file.path,
    extras: {
      'title': title,
      'episodeNumber': episodeNumber,
    },
  );
}
