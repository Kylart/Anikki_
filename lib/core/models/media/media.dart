import 'dart:convert';
import 'dart:math';

import 'package:anikki/core/bloc_provider.dart';
import 'package:anikki/core/core.dart';
import 'package:anikki/data/kitsu/models/schema.graphql.dart';
import 'package:anitomy/anitomy.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

import 'package:anikki/data/data.dart';

part 'media_episodes.dart';
part 'media_images.dart';

sealed class IMedia extends Equatable {
  const IMedia({
    this.anilistInfo,
    this.malInfo,
    this.tmdbInfo,
    this.kitsuInfo,
  });

  final Fragment$media? anilistInfo;
  final TmdbTvDetails? tmdbInfo;
  final MalMediaInfo? malInfo;
  final KitsuMediaInfo? kitsuInfo;

  String? get title;
  int? get seasonNumber;
}

final class Media extends IMedia with MediaImages, MediaEpisodes {
  const Media({
    super.anilistInfo,
    super.tmdbInfo,
    super.malInfo,
    super.kitsuInfo,
  });

  bool get isEmpty => props.every((prop) => prop == null);
  bool get isNotEmpty => !isEmpty;

  int get id =>
      anilistInfo?.id ??
      malInfo?.id ??
      int.tryParse(kitsuInfo?.id ?? '') ??
      tmdbInfo?.id ??
      Random().nextInt(100000);

  int? get malId => anilistInfo?.idMal ?? malInfo?.id;

  @override
  String? get title =>
      anilistInfo?.title?.userPreferred ??
      anilistInfo?.title?.romaji ??
      malInfo?.title ??
      kitsuInfo?.titles.canonical ??
      tmdbInfo?.name ??
      anilistInfo?.title?.english ??
      kitsuInfo?.titles.translated;

  String? get originalTitle =>
      anilistInfo?.title?.native ??
      malInfo?.alternativeTitles?.ja ??
      kitsuInfo?.titles.original ??
      tmdbInfo?.originalName;

  @override
  int? get seasonNumber {
    final parsedTitle = Anitomy(inputString: title!);

    return parsedTitle.season ??
        parsedTitle.episode ??
        synonyms?.fold<int?>(
          null,
          (value, synonym) => value ?? Anitomy(inputString: synonym).season,
        );
  }

  List<String>? get synonyms => {
        title,

        /// Full english name
        anilistInfo?.title?.english ?? malInfo?.alternativeTitles?.en,

        /// Native name (probably in Japanese)
        originalTitle,

        /// Romaji name
        anilistInfo?.title?.romaji,

        /// All the other synonyms
        ...(anilistInfo?.synonyms ?? []),
        ...(malInfo?.alternativeTitles?.synonyms ?? []),
        tmdbInfo?.name,

        kitsuInfo?.titles.alternatives
      }.whereType<String>().toList();

  Enum$MediaSeason? get season =>
      anilistInfo?.season ??
      malInfo?.startSeason?.anilistSeason ??
      (DateTime.tryParse(
                kitsuInfo!.startDate!,
              )?.month ==
              null
          ? null
          : getSeasonFromMonth(
              DateTime.parse(
                kitsuInfo!.startDate!,
              ).month,
            ));

  int? get seasonYear =>
      anilistInfo?.seasonYear ??
      malInfo?.startSeason?.year ??
      DateTime.tryParse(kitsuInfo?.startDate ?? '')?.year;

  List<String>? get genres => (anilistInfo?.genres ??
          malInfo?.genres?.map((genre) => genre.name) ??
          kitsuInfo?.categories.nodes
              ?.where((category) => category != null)
              .map(
                (category) => category!.slug
                    .split('-')
                    .map((w) => w.capitalize())
                    .join(' '),
              )
              .toList() ??
          tmdbInfo?.genres?.map((genre) => genre.name))
      ?.whereType<String>()
      .toList();

  Enum$MediaFormat? get format =>
      anilistInfo?.format ??
      switch (malInfo?.mediaType) {
        'tv' => Enum$MediaFormat.TV,
        'movie' => Enum$MediaFormat.MOVIE,
        'ova' => Enum$MediaFormat.OVA,
        'ona' => Enum$MediaFormat.ONA,
        'special' => Enum$MediaFormat.SPECIAL,
        null => null,
        _ => Enum$MediaFormat.$unknown,
      } ??
      switch (kitsuInfo?.subtype) {
        Enum$AnimeSubtypeEnum.TV => Enum$MediaFormat.TV,
        Enum$AnimeSubtypeEnum.SPECIAL => Enum$MediaFormat.SPECIAL,
        Enum$AnimeSubtypeEnum.OVA => Enum$MediaFormat.OVA,
        Enum$AnimeSubtypeEnum.ONA => Enum$MediaFormat.ONA,
        Enum$AnimeSubtypeEnum.MOVIE => Enum$MediaFormat.MOVIE,
        Enum$AnimeSubtypeEnum.MUSIC => Enum$MediaFormat.MUSIC,
        Enum$AnimeSubtypeEnum.$unknown => Enum$MediaFormat.$unknown,
        null => null,
      };

  String? get youtubeId =>
      tmdbInfo?.tmdbVideos?.results
          ?.firstWhereOrNull(
            (video) =>
                video.iso6391 == 'en' &&
                video.site?.toLowerCase() == 'youtube' &&
                video.type?.toLowerCase() == 'trailer',
          )
          ?.key ??
      (anilistInfo?.trailer?.site?.toLowerCase() == 'youtube'
          ? anilistInfo?.trailer?.id
          : null) ??
      kitsuInfo?.youtubeTrailerVideoId;

  @override
  List<Object?> get props => [
        malInfo,
        anilistInfo,
        kitsuInfo,
        tmdbInfo,
      ];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anilistInfo': anilistInfo?.toJson(),
      'malInfo': malInfo?.toJson(),
      'kitsuInfo': kitsuInfo?.toJson(),
      'tmdbInfo': tmdbInfo?.toJson(),
    };
  }

  factory Media.fromMap(Map<String, dynamic> map) {
    return Media(
      anilistInfo: Fragment$media.fromJson(
        map['anilistInfo'] as Map<String, dynamic>,
      ),
      malInfo: MalMediaInfo.fromMap(
        map['malInfo'] as Map<String, dynamic>,
      ),
      kitsuInfo: KitsuMediaInfo.fromJson(
        map['kitsuInfo'] as Map<String, dynamic>,
      ),
      tmdbInfo: TmdbTvDetails.fromJson(
        map['tmdbInfo'],
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Media.fromJson(String source) =>
      Media.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  Media copyWith({
    Fragment$media? anilistInfo,
    MalMediaInfo? malInfo,
    KitsuMediaInfo? kitsuInfo,
    TmdbTvDetails? tmdbInfo,
  }) {
    return Media(
      anilistInfo: anilistInfo ?? this.anilistInfo,
      malInfo: malInfo ?? this.malInfo,
      kitsuInfo: kitsuInfo ?? this.kitsuInfo,
      tmdbInfo: tmdbInfo ?? this.tmdbInfo,
    );
  }
}
