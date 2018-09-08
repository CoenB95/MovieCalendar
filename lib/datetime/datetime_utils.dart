import 'package:intl/intl.dart';

class Date {
  static DateFormat defaultFormat = new DateFormat('d-MM-y');

  final int _year;
  final int _month;
  final int _day;

  Date(int year, [int month = 1, int day = 1])
      : _year = year,
        _month = month,
        _day = day;

  Date._ofDateTime(DateTime t) : this(t.year, t.month, t.day);

  Date.today() : this._ofDateTime(new DateTime.now());

  int get year => _year;

  int get month => _month;

  int get day => _day;

  @override
  bool operator ==(Object other) => other is Date &&
      other.year == year && other.month == month && other.day == day;

  @override
  int get hashCode => year.hashCode^month.hashCode^day.hashCode;

  TimeOnDate atTime(Time time) =>
      new TimeOnDate(year, month, day, time.hour, time.minute, time.second);

  int daysTill(Date other) =>
      new DateTime(year, month, day).difference(
          new DateTime(other.year, other.month, other.day)).inDays;

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

  @override
  String toString() => format();
}

class Time {
  static DateFormat defaultFormat = new DateFormat('HH:mm');

  int _hour;
  int _minute;
  int _second;

  Time([int hour = 0, int minute = 0, int second = 0])
      : this._hour = hour,
        this._minute = minute,
        this._second = second;

  int get hour => _hour;

  int get minute => _minute;

  int get second => _second;

  @override
  bool operator ==(Object other) => other is Time &&
      other.hour == hour && other.minute == minute && other.second == second;

  @override
  int get hashCode => hour.hashCode^minute.hashCode^second.hashCode;

  String format({DateFormat format}) {
    if (format == null)
      format = defaultFormat;
    return format.format(onDate(new Date(1970)));
  }

  static Time now() {
    var t = new DateTime.now();
    return new Time(t.hour, t.minute, t.second);
  }

  TimeOnDate onDate(Date date) =>
      new TimeOnDate(date.year, date.month, date.day, hour, minute, second);

  static Time parse(String source, {DateFormat format}) {
    if (format == null)
      format = defaultFormat;
    var parsed = format.parse(source);
    return new Time(parsed.hour, parsed.minute, parsed.second);
  }

  Time plus({int hours = 0, int minutes = 0, int seconds = 0}) =>
      new Time(hour + hours, minute + minutes, second + seconds);

  /*Duration timeTill(TimeOnDate other) =>
      new Duration(hours: hour - other.hour, minutes: minute - other.minute,
          seconds: second - other.second);*/
}

class TimeOnDate extends DateTime {
  static DateFormat defaultFormat = new DateFormat('d-MM-y HH:mm');

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

  TimeOnDate._ofDateTime(DateTime t) : super(
      t.year,
      t.month,
      t.day,
      t.hour,
      t.minute,
      t.second,
      t.millisecond,
      t.microsecond);

  TimeOnDate.now() : super.now();

  String format({DateFormat format}) {
    if (format == null)
      format = defaultFormat;
    return format.format(this);
  }

  TimeOnDate plus({int days = 0, int hours = 0, int minutes = 0, int seconds = 0}) =>
      new TimeOnDate._ofDateTime(add(new Duration(days: days, hours: hours,
          minutes: minutes, seconds: seconds)));

  Duration timeTill(TimeOnDate other) =>
      new Duration(hours: hour - other.hour, minutes: minute - other.minute,
          seconds: second - other.second);

  Date toDate() => new Date(year, month, day);

  Time toTime() => new Time(hour, minute);
}