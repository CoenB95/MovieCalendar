import 'package:movie_calendar/datetime/date_utils.dart';
import 'package:movie_calendar/datetime/time_utils.dart';

class Movie {
  String title;
  Map<Date, List<MovieTime>> times = {};

  @override
  String toString() => "'$title'@$times";
}

class MovieTime {
  static final int midnightHour = 4;

  Time start;
  Time end;
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