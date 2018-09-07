import 'package:intl/intl.dart';
import 'package:movie_calendar/datetime/time_utils.dart';

class Date {
  static DateFormat defaultFormat = new DateFormat('d-MM-y');

  final int _year;
  final int _month;
  final int _day;

  Date(int year, [int month = 1, int day = 1])
      : _year = year,
        _month = month,
        _day = day;

  int get year => _year;

  int get month => _month;

  int get day => _day;

  @override
  bool operator ==(Object other) => other is Date &&
      other.year == year && other.month == month && other.day == day;

  @override
  int get hashCode => year.hashCode^month.hashCode^day.hashCode;

  DateTime atTime(Time time) =>
      new DateTime(year, month, day, time.hour, time.minute, time.second);

  Duration difference(Date other) =>
      new DateTime(year, month, day).difference(
          new DateTime(other.year, other.month, other.day));

  String format({DateFormat format}) {
    if (format == null)
      format = defaultFormat;
    return format.format(atTime(new Time()));
  }

  static Date parse(String source, {DateFormat format}) {
    if (format == null)
      format = defaultFormat;
    var parsed = format.parse(source);
    return new Date(parsed.year, parsed.month, parsed.day);
  }

  Date plus({int years = 0, int months = 0, int days = 0}) {
    return new Date(year + years, month + months, day + days);
  }

  static Date today() {
    var t = new DateTime.now();
    return new Date(t.year, t.month, t.day);
  }

  @override
  String toString() => format();
}