import 'package:movie_calendar/datetime/datetime_utils.dart';

class Movie {
  String title;
  Map<Date, List<MovieTime>> times = {};

  @override
  String toString() => "'$title'@$times";
}

class MovieTime {
  static final int midnightHour = 4;

  TimeOnDate start;
  TimeOnDate end;
  bool active;
  bool full;
  String link;

  @override
  String toString() {
    return start.format();
  }
}

enum Classification {
  age16
}