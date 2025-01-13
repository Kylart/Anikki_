part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object?> get props => [];
}

final class HomeCurrentIndexChanged extends HomeEvent {
  const HomeCurrentIndexChanged(this.index);

  final int index;

  @override
  List<Object?> get props => [
        index,
      ];
}

final class HomeCurrentBackgroundUrlChanged extends HomeEvent {
  const HomeCurrentBackgroundUrlChanged({
    this.url,
    this.resetTimer = true,
  });

  final String? url;
  final bool resetTimer;

  @override
  List<Object?> get props => [
        url,
        resetTimer,
      ];
}

final class HomeRefreshed extends HomeEvent {
  const HomeRefreshed({
    this.requestedType,
    this.watchList,
    this.watchListProvider,
  });

  final WatchList? watchList;
  final HomeMediaType? requestedType;
  final WatchListProvider? watchListProvider;

  @override
  List<Object?> get props => [
        watchList,
        requestedType,
        watchListProvider,
      ];
}
