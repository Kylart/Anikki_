import 'package:flutter/material.dart';

import 'package:anikki/core/core.dart';
import 'package:anikki/data/data.dart';

/// Repository to handle Feed related features
class FeedRepository {
  const FeedRepository({
    required this.anilist,
    required this.tmdb,
  });

  /// The [Anilist] API to use for this repository
  final Anilist anilist;

  /// The [TMDB] object to use to interact with TMDB.
  final Tmdb tmdb;

  /// Returns the trending entries
  Future<List<Media>> getTrending() async {
    final entries = await anilist.getTrending();

    return [
      for (final entry in entries)
        await tmdb.hydrateMediaWithTmdb(
          Media(anilistInfo: entry.media),
        ),
    ];
  }

  /// Returns recommended entries
  Future<List<Media>> getrecommendations() async {
    final entries = await anilist.getRecommendations();

    return [
      for (final entry in entries)
        await tmdb.hydrateMediaWithTmdb(
          Media(anilistInfo: entry.media),
        ),
    ];
  }

  Future<List<ScheduleEntry>> getSchedule({
    required DateTimeRange range,
  }) async {
    logger.info('Fetching schedule for range: $range');

    final entries = await anilist.getSchedule(range);

    logger.info('Fetched ${entries.length} schedule entries');

    return [
      for (final entry in entries)
        ScheduleEntry(
          releaseTime: DateTime.fromMillisecondsSinceEpoch(
            entry.airingAt * 1000,
          ),
          media: Media(
            anilistInfo: entry.media,
          ),
          episodeNumber: entry.episode,
        ),
    ];
  }

  /// Helper method to compute the default range for a schedule
  DateTimeRange computeRange() {
    return DateTimeRange(
      start: DateTime.now().copyWith(hour: 0, minute: 0, second: 0),
      end: DateTime.now()
          .add(const Duration(days: 6))
          .copyWith(hour: 23, minute: 59, second: 59),
    );
  }
}
