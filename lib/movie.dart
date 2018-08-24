import 'package:intl/intl.dart';

class Movie {
  String title;
  List<MovieTime> times = [];
}

class MovieTime {
  static final int midnightHour = 4;
  static DateFormat timeFormat = new DateFormat('HH:mm');

  DateTime start;
  DateTime end;
  bool active;
  bool full;
  String link;

  bool startsAtDate(DateTime date) {
    if (date.hour < midnightHour)
      return start.isBefore(new DateTime(date.year, date.month, date.day,
          midnightHour, 0));
    else
      return start.isBefore(new DateTime(date.year, date.month, date.day + 1,
          midnightHour, 0));
  }

  @override
  String toString() {
    return timeFormat.format(start);
  }
}

enum Classification {
  age16
}