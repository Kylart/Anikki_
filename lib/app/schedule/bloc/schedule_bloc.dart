import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'package:anikki/core/core.dart';
import 'package:anikki/data/data.dart';
import 'package:anikki/domain/domain.dart';

part 'schedule_event.dart';
part 'schedule_state.dart';

class ScheduleBloc extends AutoRefreshBloc<ScheduleEvent, ScheduleState> {
  final FeedRepository feedRepository;

  ScheduleBloc(this.feedRepository)
    : super(ScheduleInitial(feedRepository.computeRange())) {
    on<ScheduleRefreshed>(_onRefresh);

    setUpAutoRefresh();
  }

  @override
  Duration get intervalTime => const Duration(hours: 6);

  @override
  void autoRefresh() {
    add(ScheduleRefreshed(range: feedRepository.computeRange()));
  }

  Future<void> _onRefresh(
    ScheduleRefreshed event,
    Emitter<ScheduleState> emit,
  ) async {
    emit(ScheduleLoading(event.range));

    try {
      final entries = await feedRepository.getSchedule(range: event.range);

      emit(ScheduleLoaded(range: event.range, entries: entries));
    } on AnilistGetScheduleException catch (e) {
      emit(ScheduleError(message: e.error ?? e.cause, range: event.range));
    } catch (e) {
      logger.error('Error fetching schedule', e);

      emit(ScheduleError(message: e.toString(), range: event.range));
    }
  }
}
