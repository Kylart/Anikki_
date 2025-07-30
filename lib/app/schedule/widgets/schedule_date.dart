part of 'schedule_content.dart';

class _ScheduleDate extends StatelessWidget {
  const _ScheduleDate({
    required this.date,
    required this.isSelected,
    required this.onTap,
  });

  final DateTime date;
  final bool isSelected;
  final void Function() onTap;

  String getWeekday(int weekday) {
    return switch (weekday) {
      1 => 'Monday',
      2 => 'Tuesday',
      3 => 'Wednesday',
      4 => 'Thursday',
      5 => 'Friday',
      6 => 'Saturday',
      7 => 'Sunday',
      _ => 'Invalid weekday',
    };
  }

  String getMonth(int month) {
    return switch (month) {
      1 => 'Jan',
      2 => 'Feb',
      3 => 'Mar',
      4 => 'Apr',
      5 => 'May',
      6 => 'Jun',
      7 => 'Jul',
      8 => 'Aug',
      9 => 'Sep',
      10 => 'Oct',
      11 => 'Nov',
      12 => 'Dec',
      _ => 'Invalid month',
    };
  }

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? context.colorScheme.primary : null;
    final fontWeight = isSelected ? FontWeight.bold : null;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.0),
        child: SizedBox(
          height: 90,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                getWeekday(date.weekday),
                style: context.textTheme.bodySmall?.copyWith(
                  color: color,
                  fontWeight: fontWeight,
                ),
              ),
              Text(
                date.day.toString(),
                style: context.textTheme.titleLarge?.copyWith(
                  color: color,
                  fontWeight: fontWeight,
                ),
              ),
              Text(
                getMonth(date.month),
                style: context.textTheme.bodyLarge?.copyWith(
                  color: color,
                  fontWeight: fontWeight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
