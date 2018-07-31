import 'package:intl/intl.dart';

class Movie {
  String title;
  int _id = 3015;
  String suburl = "a-prayer-before-dawn-601923";
  List<MovieTime> times = [];
  //List<Classification> classification = ["16", "language", "violence"];
  //List<MovieTime> timeslots: ["22:00"];//active [1], full [0], links ["/tickets/.."]
}

class MovieTime {
  static DateFormat timeFormat = new DateFormat('HH:mm');

  DateTime start;
  DateTime end;
  bool active;
  bool full;
  String link;

  @override
  String toString() {
    return timeFormat.format(start);
  }
}

enum Classification {
  age16
}