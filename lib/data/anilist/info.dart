part of 'anilist.dart';

mixin AnilistInfo on AnilistClient {
  Timer? _clearCacheTimer;

  final String _infoBoxName = 'anilist_info_cache';

  Future<Box> _getInfoCache() async => Hive.openBox(_infoBoxName);

  Future<Fragment$media?> _getInfoFromCache(String key) async {
    final cache = await _getInfoCache();
    final media = cache.get(key) as Map<dynamic, dynamic>?;

    if (media != null && media is Map<String, dynamic>) {
      return Fragment$media.fromJson(media);
    }

    return null;
  }

  Future<void> _setInfoCache(
    String key,
    Fragment$media media,
  ) async {
    final cache = await _getInfoCache();

    /// Cache media for 5 minutes
    cache.put(key, media.toJson());
  }

  Future<void> clearInfoCache() async {
    final cache = await _getInfoCache();
    await cache.clear();

    _clearCacheTimer?.cancel();
    _clearCacheTimer = null;
  }

  Fragment$media? getInfoFromInfo(
    String name,
    Map<String, Fragment$media> info,
  ) {
    return info[getId(name: name)];
  }

  Future<Map<String, Fragment$media>> infoFromMultiple(
    List<String> names, {
    bool useCache = false,
  }) async {
    Map<String, Fragment$media> results = {};
    final namesToFetch = List<String>.from(names);

    /// Check if we have the data in the cache
    if (useCache) {
      for (final name in names) {
        final id = getId(name: name);
        final media = await _getInfoFromCache(id);

        if (media != null) {
          results.putIfAbsent(id, () => media);
          namesToFetch.remove(name);
        }
      }
    }

    int currentIndex = 0;
    int interval = 5;
    List<String> tempNames = [];

    while (currentIndex < namesToFetch.length) {
      if (currentIndex + interval > namesToFetch.length) interval = -1;

      tempNames = namesToFetch.sublist(
        currentIndex,
        interval == -1 ? namesToFetch.length : currentIndex + interval,
      );

      final QueryResult result = await _makeInfoQuery(tempNames);

      if (result.data == null && result.exception != null) {
        throw AnilistGetInfoException(
          error: result.exception!.graphqlErrors.isEmpty
              ? result.exception!.linkException.toString()
              : result.exception!.graphqlErrors.first.message,
        );
      } else {
        result.data?.forEach((key, value) async {
          if (results.containsKey(key)) return;
          if (key == '__typename') return;

          final data = value['media'];

          if (data.length == 0) return;

          final media = Fragment$media.fromJson(data[0]);
          results.putIfAbsent(key, () => media);

          /// Cache the media if needed
          if (useCache) _setInfoCache(key, media);
        });
      }

      if (interval != -1) {
        // Anilist rate limit is at 90 req / min. This makes 5 * 60 / 4 = 75 queries per minute.
        await Future.delayed(const Duration(seconds: 4));
        currentIndex += interval;
      } else {
        break;
      }
    }

    _clearCacheTimer?.cancel();
    _clearCacheTimer = Timer(
      const Duration(minutes: 5),
      clearInfoCache,
    );

    return results;
  }

  Future<QueryResult> _makeInfoQuery(List<String> names) async {
    String query = '';

    for (final name in names) {
      final String id = getId(name: name);

      query +=
          '''
        $id: Page(page: 1, perPage: 1) {
          media(search: "$name", type: ANIME) {
            ...media
          }
        }
      ''';
    }

    query =
        '''
      query {
        $query
      }

      fragment media on Media {
        id
        siteUrl
        idMal
        isFavourite
        title {
          userPreferred
          romaji
          english
          native
        }
        coverImage {
          extraLarge
          large
          medium
          color
        }
        trailer {
          id
          site
          thumbnail
        }
        streamingEpisodes {
          title
          thumbnail
          url
          site
        }
        bannerImage
        genres
        synonyms
        isAdult
        format
        description
        source
        episodes
        nextAiringEpisode {
          airingAt
          episode
        }
        studios(isMain: true) {
          nodes {
            name
          }
        }
        countryOfOrigin
        startDate {
          year
          month
          day
        }
      }
    ''';

    final QueryOptions options = QueryOptions(document: gql(query));

    final QueryResult result = await client.query(options);

    return result;
  }
}
