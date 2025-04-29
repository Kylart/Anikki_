import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

import 'package:anikki/core/core.dart';
import 'package:anikki/data/data.dart';
import 'package:anikki/domain/domain.dart';

part 'home_event.dart';
part 'home_state.dart';

String? _getBackgroundImageUrl(Media? media) {
  /// Get a random image from the media's images
  String? imageUrl;

  final images = media?.tmdbInfo?.images!.backdrops
      ?.where((image) => image.filePath != null)
      .toList()
    ?..shuffle();

  if (images != null && images.isNotEmpty) {
    final image = images.first;

    if (image.filePath != null) {
      imageUrl = getTmdbImageUrl(image.filePath!);
    }
  }

  /// If no image was found, use the banner or cover image
  imageUrl ??= media?.bannerImage ?? media?.coverImage;

  return imageUrl;
}

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final UserListRepository userListRepository;
  final FeedRepository feedRepository;

  Timer? _interval;

  static const intervalDuration = Duration(seconds: 15);

  HomeBloc({
    required this.userListRepository,
    required this.feedRepository,
  }) : super(HomeInitial()) {
    on<HomeCurrentBackgroundUrlChanged>(_onCurrentBackgroundUrlChanged);
    on<HomeCurrentIndexChanged>(_onCurrentIndexChanged);
    on<HomeRefreshed>(_onRefresh);
  }

  @override
  Future<void> close() {
    _interval?.cancel();
    return super.close();
  }

  _resetTimer() {
    _interval?.cancel();
    _interval = Timer.periodic(
      intervalDuration,
      (_) {
        add(
          HomeCurrentIndexChanged(state.currentIndex + 1),
        );
      },
    );
  }

  FutureOr<void> _onCurrentBackgroundUrlChanged(event, emit) {
    emit(
      state.copyWith(
        currentBackgroundUrl: event.url,
      ),
    );

    if (event.resetTimer) {
      _resetTimer();
    }
  }

  FutureOr<void> _onCurrentIndexChanged(event, emit) {
    final nextState = state.copyWith(
      currentIndex: event.index,
    );

    emit(nextState);

    add(
      HomeCurrentBackgroundUrlChanged(
        url: _getBackgroundImageUrl(nextState.currentMedia),
        resetTimer: true,
      ),
    );
  }

  Future<void> _onRefresh(HomeRefreshed event, Emitter<HomeState> emit) async {
    List<MediaListEntry>? entries;
    var requestedType = event.requestedType ?? state.type;

    try {
      emit(
        HomeLoading(
          entries: state.entries,
          currentIndex: state.currentIndex,
          currentBackgroundUrl: state.currentBackgroundUrl,
          watchListProvider: event.watchListProvider ?? state.watchListProvider,
          type: requestedType,
        ),
      );

      /// If the requested type is [HomeMediaType.following] or [HomeMediaType.toStart]
      /// and the watch list is empty, switch to [HomeMediaType.trending]
      if ([
            HomeMediaType.following,
            HomeMediaType.toStart,
          ].contains(requestedType) &&
          (event.watchList == null || event.watchList?.isEmpty == true)) {
        requestedType = HomeMediaType.trending;
      }

      entries = switch (requestedType) {
        HomeMediaType.following =>
          await userListRepository.getContinueList(event.watchList!),
        HomeMediaType.toStart =>
          await userListRepository.getStartList(event.watchList!),
        HomeMediaType.trending => (await feedRepository.getTrending())
            .map(
              (media) => MediaListEntry(media: media, progress: null),
            )
            .toList(),
        HomeMediaType.recommendations =>
          (await feedRepository.getrecommendations())
              .map(
                (media) => MediaListEntry(media: media, progress: null),
              )
              .toList(),
      };

      emit(
        HomeLoaded(
          entries: entries,
          currentIndex: 0,
          currentBackgroundUrl: _getBackgroundImageUrl(
            entries.firstOrNull?.media,
          ),
          watchListProvider: event.watchListProvider ?? state.watchListProvider,
          type: requestedType,
        ),
      );

      _resetTimer();
    } on AnilistGetListException catch (e) {
      logger.error(e.toString(), e);

      emit(
        HomeError(
          entries: state.entries,
          currentIndex: state.currentIndex,
          currentBackgroundUrl: state.currentBackgroundUrl,
          watchListProvider: event.watchListProvider ?? state.watchListProvider,
          type: state.type,
          message: e.error ?? e.cause,
        ),
      );
    } on AnilistGetTrendingException catch (e) {
      logger.error(e.toString(), e);

      emit(
        HomeError(
          entries: entries ?? state.entries,
          currentBackgroundUrl: state.currentBackgroundUrl,
          currentIndex: state.currentIndex,
          watchListProvider: event.watchListProvider ?? state.watchListProvider,
          type: state.type,
          message: e.error ?? e.cause,
        ),
      );
    } on AnilistGetRecommendationsException catch (e) {
      logger.error(e.toString(), e);

      emit(
        HomeError(
          entries: entries ?? state.entries,
          currentBackgroundUrl: state.currentBackgroundUrl,
          currentIndex: state.currentIndex,
          watchListProvider: event.watchListProvider ?? state.watchListProvider,
          type: state.type,
          message: e.error ?? e.cause,
        ),
      );
    } catch (e) {
      logger.error(e.toString(), e);

      emit(
        HomeError(
          entries: entries ?? state.entries,
          currentBackgroundUrl: state.currentBackgroundUrl,
          currentIndex: state.currentIndex,
          watchListProvider: event.watchListProvider ?? state.watchListProvider,
          type: state.type,
          message: e.toString(),
        ),
      );
    }
  }
}
