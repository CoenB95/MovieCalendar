class Movie {
  String _name = "A Prayer before Dawn";
  int _id = 3015;
  String suburl = "a-prayer-before-dawn-601923";
  //List<Classification> classification = ["16", "language", "violence"];
  //List<MovieTime> timeslots: ["22:00"];//active [1], full [0], links ["/tickets/.."]
}

class MovieTime {
  DateTime time;
  bool active;
  bool full;
  String link;
}

enum Classification {
  age16
}