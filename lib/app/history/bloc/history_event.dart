part of 'history_bloc.dart';

sealed class HistoryEvent extends Equatable {
  const HistoryEvent();

  @override
  List<Object> get props => [];
}

final class HistoryEntryRemoved extends HistoryEvent {
  const HistoryEntryRemoved(this.entry);

  final HistoryEntry entry;
}

final class HistoryEntryAdded extends HistoryEvent {
  const HistoryEntryAdded(this.entry);

  final HistoryEntry entry;
}
