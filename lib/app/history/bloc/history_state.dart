part of 'history_bloc.dart';

sealed class HistoryState extends Equatable {
  const HistoryState(this.entries);

  final List<HistoryEntry> entries;

  @override
  List<Object> get props => [
    entries,
  ];
}

final class HistoryInitial extends HistoryState {
  const HistoryInitial(super.entries);
}

final class HistoryLoaded extends HistoryState {
  const HistoryLoaded(super.entries);
}

final class HistoryLoading extends HistoryState {
  const HistoryLoading(super.entries);
}

final class HistoryError extends HistoryState {
  const HistoryError(super.entries, this.message);

  final String message;

  @override
  List<Object> get props => [
    entries,
    message,
  ];
}
