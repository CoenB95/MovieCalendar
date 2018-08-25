import 'package:movie_calendar/datetime/date_utils.dart';

class Time {
  final int _hour;
  final int _minute;
  final int _second;

  Time([int hour = 0, int minute = 0, int second = 0])
      : this._hour = hour,
        this._minute = minute,
        this._second = second;

  int get hour => _hour;

  int get minute => _minute;

  int get second => _second;

  DateTime atDate(Date date) =>
      new DateTime(date.year, date.month, date.day, hour, minute, second);

  Duration difference(Time other) =>
      new Duration(hours: other.hour - hour, minutes: other.minute - minute,
          seconds: other.second - second);
}