part of 'schedule_bloc.dart';

sealed class ScheduleState extends Equatable {
  final DateTimeRange range;

  const ScheduleState(this.range);

  @override
  List<Object> get props => [
        range,
      ];

  @override
  bool get stringify => true;
}

final class ScheduleInitial extends ScheduleState {
  const ScheduleInitial(super.range);
}

final class ScheduleLoading extends ScheduleState {
  const ScheduleLoading(
    super.range,
  );
}

final class ScheduleLoaded extends ScheduleState {
  const ScheduleLoaded({
    required DateTimeRange range,
    required this.entries,
  }) : super(range);

  final List<ScheduleEntry> entries;

  @override
  List<Object> get props => [
        range,
        entries,
      ];
}

final class ScheduleError extends ScheduleState {
  final String message;

  const ScheduleError({
    required this.message,
    required DateTimeRange range,
  }) : super(range);

  @override
  List<Object> get props => [
        message,
        range,
      ];
}
