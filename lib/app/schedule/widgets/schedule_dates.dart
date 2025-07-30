part of 'schedule_content.dart';

class _ScheduleDates extends StatelessWidget {
  const _ScheduleDates({
    required this.range,
    required this.selectedDate,
    required this.onDateSelected,
  });

  final DateTimeRange range;
  final DateTime selectedDate;
  final void Function(DateTime) onDateSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: ListView(
        semanticChildCount: range.end.compareTo(range.start),
        children: [
          for (var currentDate = range.start;
              currentDate.isBefore(range.end);
              currentDate = currentDate.add(const Duration(days: 1)))
            _ScheduleDate(
              date: currentDate,
              isSelected: currentDate == selectedDate,
              onTap: () => onDateSelected(currentDate),
            ),
        ],
      ),
    );
  }
}
