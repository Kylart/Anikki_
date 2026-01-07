part of 'home_bloc.dart';

enum HomeMediaType {
  following('Following', HugeIcons.strokeRoundedAllBookmark),
  toStart('To Start', HugeIcons.strokeRoundedBookmarkAdd02),
  trending('Trending', HugeIcons.strokeRoundedFire),
  recommendations('Recommended', HugeIcons.strokeRoundedThumbsUp);

  final String title;
  final IconData icon;

  const HomeMediaType(this.title, this.icon);
}

sealed class HomeState extends Equatable {
  const HomeState({
    required this.type,
    this.currentIndex = 0,
    this.entries = const [],
    this.currentBackgroundUrl,
    this.watchListProvider,
  });

  final int currentIndex;
  final String? currentBackgroundUrl;
  final List<MediaListEntry> entries;
  final HomeMediaType type;
  final WatchListProvider? watchListProvider;

  Media? get currentMedia => entries
      .elementAtOrNull(
        entries.isEmpty ? 0 : currentIndex % entries.length,
      )
      ?.media;

  MediaListEntry? get currentEntry => entries.firstWhereOrNull(
    (e) => switch (watchListProvider) {
      WatchListProvider.anilist =>
        currentMedia?.anilistInfo?.id != null &&
            e.media.anilistInfo?.id == currentMedia?.anilistInfo?.id,
      WatchListProvider.mal =>
        currentMedia?.malInfo?.id != null &&
            e.media.malInfo?.id == currentMedia?.malInfo?.id,
      WatchListProvider.kitsu =>
        currentMedia?.kitsuInfo?.id != null &&
            e.media.kitsuInfo?.id == currentMedia?.kitsuInfo?.id,
      null => e.media == currentMedia,
    },
  );

  int get currentEntryIndex =>
      currentEntry == null ? 0 : entries.indexOf(currentEntry!);

  @override
  List<Object?> get props => [
    currentIndex,
    currentBackgroundUrl,
    entries,
    type,
  ];

  @override
  String toString() => [
    'HomeState(',
    'type: ${type.title}, ',
    'currentMedia: ${currentMedia?.title}, ',
    'currentBackgroundUrl: $currentBackgroundUrl, ',
    '${entries.length} entries',
    ')',
  ].join('');

  HomeState copyWith({
    int? currentIndex,
    String? currentBackgroundUrl,
    List<MediaListEntry>? entries,
    HomeMediaType? type,
    WatchListProvider? watchListProvider,
  });
}

final class HomeInitial extends HomeState {
  const HomeInitial({
    super.entries,
    super.currentBackgroundUrl,
    super.currentIndex,
    super.type = HomeMediaType.following,
    super.watchListProvider,
  });

  @override
  HomeInitial copyWith({
    int? currentIndex,
    String? currentBackgroundUrl,
    List<MediaListEntry>? entries,
    HomeMediaType? type,
    WatchListProvider? watchListProvider,
  }) {
    {
      return HomeInitial(
        currentIndex: currentIndex ?? this.currentIndex,
        currentBackgroundUrl: currentBackgroundUrl ?? this.currentBackgroundUrl,
        entries: entries ?? this.entries,
        type: type ?? this.type,
        watchListProvider: watchListProvider ?? this.watchListProvider,
      );
    }
  }
}

final class HomeLoading extends HomeState {
  const HomeLoading({
    required super.type,
    super.entries,
    super.currentBackgroundUrl,
    super.currentIndex,
    super.watchListProvider,
  });

  @override
  HomeLoading copyWith({
    int? currentIndex,
    String? currentBackgroundUrl,
    List<MediaListEntry>? entries,
    HomeMediaType? type,
    WatchListProvider? watchListProvider,
  }) {
    return HomeLoading(
      currentIndex: currentIndex ?? this.currentIndex,
      currentBackgroundUrl: currentBackgroundUrl ?? this.currentBackgroundUrl,
      entries: entries ?? this.entries,
      type: type ?? this.type,
      watchListProvider: watchListProvider ?? this.watchListProvider,
    );
  }
}

final class HomeLoaded extends HomeState {
  const HomeLoaded({
    required super.type,
    super.entries,
    super.currentBackgroundUrl,
    super.currentIndex,
    super.watchListProvider,
  });

  @override
  HomeLoaded copyWith({
    int? currentIndex,
    String? currentBackgroundUrl,
    List<MediaListEntry>? entries,
    HomeMediaType? type,
    WatchListProvider? watchListProvider,
  }) {
    return HomeLoaded(
      currentIndex: currentIndex ?? this.currentIndex,
      currentBackgroundUrl: currentBackgroundUrl ?? this.currentBackgroundUrl,
      entries: entries ?? this.entries,
      type: type ?? this.type,
      watchListProvider: watchListProvider ?? this.watchListProvider,
    );
  }
}

final class HomeError extends HomeState {
  const HomeError({
    required super.type,
    super.entries,
    super.currentIndex,
    super.currentBackgroundUrl,
    super.watchListProvider,
    required this.message,
  });

  final String message;

  @override
  List<Object?> get props => [
    entries,
    message,
    type,
    currentBackgroundUrl,
  ];

  @override
  HomeError copyWith({
    int? currentIndex,
    String? currentBackgroundUrl,
    List<MediaListEntry>? entries,
    HomeMediaType? type,
    WatchListProvider? watchListProvider,
    String? message,
  }) {
    return HomeError(
      currentIndex: currentIndex ?? this.currentIndex,
      currentBackgroundUrl: currentBackgroundUrl ?? this.currentBackgroundUrl,
      entries: entries ?? this.entries,
      type: type ?? this.type,
      watchListProvider: watchListProvider ?? this.watchListProvider,
      message: message ?? this.message,
    );
  }
}
