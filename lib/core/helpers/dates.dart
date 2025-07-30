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

bool isSameDay(DateTime date1, DateTime date2) {
  return date1.day == date2.day &&
      date1.month == date2.month &&
      date1.year == date2.year;
}
