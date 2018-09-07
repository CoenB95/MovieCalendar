import 'dart:async';

import 'package:movie_calendar/datetime/date_utils.dart';
import 'package:movie_calendar/movie.dart';

abstract class MovieParser {

  Future<List<Movie>> fetchMoviesOfDay(Date date);

  static void debugPrintMovieTimes(List<Movie> movies) {
    movies.forEach((m) {
      print("'${m.title}'");
      m.times.forEach((date, times) {
        print('  ' + date.toString());
        times.forEach((t) {
          print('    ' + t.toString());
        });
      });
    });
  }
}