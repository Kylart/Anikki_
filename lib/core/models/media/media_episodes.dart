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
  List<Object?> get props => [media, episodeNumber, title, thumbnail];

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

  List<EpisodeInfo>? _getEpisodeInfosFromTmdb() {
    if (tmdbInfo?.tmdbSeasons == null) {
      return null;
    }

    /// If we don't have a season number, default to season 1
    final currentSeasonNumber = seasonNumber ?? 1;
    final currentSeason = tmdbInfo!.tmdbSeasons!.firstWhereOrNull(
      (season) => season.seasonNumber == currentSeasonNumber,
    );

    if (currentSeason?.episodes == null) {
      return null;
    }

    return [
      for (final episode in currentSeason!.episodes!)
        EpisodeInfo(
          media: this as Media,
          episodeNumber: episode.episodeNumber,
          title: episode.name,
          thumbnail: episode.stillPath != null
              ? getTmdbImageUrl(episode.stillPath!)
              : null,
        ),
    ];
  }

  List<EpisodeInfo>? _getEpisodeInfosFromAnilist() {
    if (anilistInfo?.streamingEpisodes == null) {
      return null;
    }
    return [
      for (final episode in anilistInfo!.streamingEpisodes!)
        EpisodeInfo(
          media: this as Media,
          episodeNumber: int.parse(
            episode?.title
                    ?.split(' - ')
                    .firstOrNull
                    ?.split('Episode ')
                    .lastOrNull ??
                '',
          ),
          title: episode?.title,
          thumbnail: episode?.thumbnail,
        ),
    ];
  }

  List<EpisodeInfo>? _getEpisodeInfosFromKitsu() {
    if (kitsuInfo?.episodes == null ||
        kitsuInfo!.episodes.nodes?.isEmpty != true) {
      return null;
    }
    return [
      for (final episode in kitsuInfo!.episodes.nodes!)
        EpisodeInfo(
          media: this as Media,
          episodeNumber: episode?.number,
          title: episode?.titles.canonical,
          thumbnail: episode?.thumbnail?.original.url,
        ),
    ];
  }

  List<EpisodeInfo> get episodeInfos =>
      _getEpisodeInfosFromTmdb() ??
      _getEpisodeInfosFromAnilist() ??
      _getEpisodeInfosFromKitsu() ??
      [];

  EpisodeInfo? getEpisodeInfo(int? episodeNumber) => episodeInfos
      .firstWhereOrNull((episode) => episode.episodeNumber == episodeNumber);
}
