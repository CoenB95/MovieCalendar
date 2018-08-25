import 'package:intl/intl.dart';
import 'package:movie_calendar/datetime/date_utils.dart';

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

  Time add({int hours = 0, int minutes = 0, int seconds = 0}) =>
      new Time(hour + hours, minute + minutes, second + seconds);

  DateTime atDate(Date date) =>
      new DateTime(date.year, date.month, date.day, hour, minute, second);

  Duration difference(Time other) =>
      new Duration(hours: hour - other.hour, minutes: minute - other.minute,
          seconds: second - other.second);

  String format({DateFormat format}) {
    if (format == null)
      format = defaultFormat;
    return format.format(atDate(new Date(1970)));
  }

  bool isAfter(Time other) {
    return second + minute * 60 + hour * 60 * 60 >
        other.second + other.minute * 60 + other.hour * 60 * 60;
  }

  bool isBefore(Time other) {
    return second + minute * 60 + hour * 60 * 60 <
        other.second + other.minute * 60 + other.hour * 60 * 60;
  }

  static Time now() {
    var t = new DateTime.now();
    return new Time(t.hour, t.minute, t.second);
  }

  static Time parse(String source, {DateFormat format}) {
    if (format == null)
      format = defaultFormat;
    var parsed = format.parse(source);
    return new Time(parsed.hour, parsed.minute, parsed.second);
  }
}