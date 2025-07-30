part of 'media.dart';

class EpisodeInfo extends Equatable {
  final Media media;
  final int? episodeNumber;
  final String? title;
  final String? thumbnail;

  const EpisodeInfo({
    required this.media,
    this.episodeNumber,
    this.title,
    this.thumbnail,
  });

  String get formattedTitle => [
        media.title,
        if (episodeNumber != null) '- Episode $episodeNumber',
        if (title != null) ': $title',
      ].join(' ');

  @override
  List<Object?> get props => [
        media,
        episodeNumber,
        title,
        thumbnail,
      ];

  @override
  bool get stringify => true;
}

mixin MediaEpisodes on IMedia {
  int? get numberOfEpisodes =>
      anilistInfo?.episodes ??
      anilistInfo?.nextAiringEpisode?.episode ??
      malInfo?.numEpisodes ??
      kitsuInfo?.episodeCount ??
      kitsuInfo?.episodes.nodes?.length ??
      tmdbInfo?.numberOfEpisodes ??
      tmdbInfo?.tmdbSeasons?.fold<int>(
        0,
        (acc, season) => acc + (season.episodes?.length ?? 0),
      );

  int? get nextAiringEpisode =>
      anilistInfo?.nextAiringEpisode?.episode ??
      tmdbInfo?.nextEpisodeToAir?.episodeNumber;

  List<EpisodeInfo> get episodeInfos => [
        if (tmdbInfo?.tmdbSeasons != null)
          for (final season in tmdbInfo!.tmdbSeasons!)
            for (final episode in season.episodes!)
              EpisodeInfo(
                media: this as Media,
                episodeNumber: episode.episodeNumber,
                title: episode.name,
                thumbnail: episode.stillPath != null
                    ? getTmdbImageUrl(episode.stillPath!)
                    : null,
              )
        else if (anilistInfo?.streamingEpisodes != null)
          for (final episode in anilistInfo!.streamingEpisodes!)
            EpisodeInfo(
              media: this as Media,
              episodeNumber: int.parse(episode?.title
                      ?.split(' - ')
                      .firstOrNull
                      ?.split('Episode ')
                      .lastOrNull ??
                  ''),
              title: episode?.title,
              thumbnail: episode?.thumbnail,
            )
        else if (kitsuInfo?.episodes != null &&
            kitsuInfo!.episodes.nodes?.isNotEmpty == true)
          for (final episode in kitsuInfo!.episodes.nodes!)
            EpisodeInfo(
              media: this as Media,
              episodeNumber: episode?.number,
              title: episode?.titles.canonical,
              thumbnail: episode?.thumbnail?.original.url,
            ),
      ];

  EpisodeInfo? getEpisodeInfo(int? episodeNumber) =>
      episodeInfos.firstWhereOrNull(
        (episode) => episode.episodeNumber == episodeNumber,
      );
}
