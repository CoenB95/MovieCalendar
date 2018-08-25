import 'package:movie_calendar/datetime/date_utils.dart';
import 'package:movie_calendar/datetime/time_utils.dart';

class TimeOnDate extends DateTime {

  TimeOnDate(int year, [
    int month = 1,
    int day = 1,
    int hour = 0,
    int minute = 0,
    int second = 0,
    int millisecond = 0,
    int microsecond = 0]) : super(
      year,
      month,
      day,
      hour,
      minute,
      second,
      millisecond,
      microsecond);

  Date toDate() => new Date(year, month, day);

  Time toTime() => new Time(hour, minute);
}