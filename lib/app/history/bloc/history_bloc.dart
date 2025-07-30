import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:anikki/core/models/history_entry.dart';

part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends HydratedBloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(HistoryInitial(<HistoryEntry>[])) {
    on<HistoryEntryRemoved>(_onEntryRemoved);
    on<HistoryEntryAdded>(_onEntryAdded);
  }

  void _onEntryRemoved(
    HistoryEntryRemoved event,
    Emitter<HistoryState> emit,
  ) {
    emit(
      HistoryLoaded(
        state.entries.where((e) => e != event.entry).toList(),
      ),
    );
  }

  void _onEntryAdded(
    HistoryEntryAdded event,
    Emitter<HistoryState> emit,
  ) {
    emit(
      HistoryLoaded(
        {...state.entries, event.entry}.toList(),
      ),
    );
  }

  @override
  HistoryState fromJson(Map<String, dynamic> json) {
    return HistoryLoaded(
      (json['entries'] as List<dynamic>)
          .map((e) => HistoryEntry.fromJson(e as String))
          .toList(),
    );
  }

  @override
  Map<String, dynamic>? toJson(HistoryState state) {
    return {
      'entries': state.entries.map((e) => e.toJson()).toList(),
    };
  }
}
