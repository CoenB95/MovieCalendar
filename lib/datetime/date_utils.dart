import 'package:movie_calendar/datetime/time_utils.dart';

class Date {
  final int _year;
  final int _month;
  final int _day;

  Date(int year, [int month, int day])
      : _year = year,
        _month = month,
        _day = day;

  int get year => _year;

  int get month => _month;

  int get day => _day;

  DateTime atTime(Time time) =>
      new DateTime(year, month, day, time.hour, time.minute, time.second);

  Duration difference(Date other) =>
      new DateTime(year, month, day).difference(
          new DateTime(other.year, other.month, other.day));
}