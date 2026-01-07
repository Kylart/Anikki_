part of 'schedule_bloc.dart';

sealed class ScheduleEvent extends Equatable {
  const ScheduleEvent();

  @override
  List<Object> get props => [];
}

final class ScheduleRefreshed extends ScheduleEvent {
  const ScheduleRefreshed({
    required this.range,
  });

  final DateTimeRange range;

  @override
  List<Object> get props => [
    range,
  ];
}
