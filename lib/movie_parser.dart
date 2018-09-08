import 'dart:async';

import 'package:movie_calendar/datetime/datetime_utils.dart';
import 'package:movie_calendar/movie.dart';

abstract class MovieParser {

  Future<List<Movie>> fetchMoviesOfDay(Date date);

  Future<List<Movie>> fetchMoviesOfDays(Iterable<Date> dates) {
    return new Future(() async {
      List<Movie> result = [];
      for (Date d in dates) {
        var day = await fetchMoviesOfDay(d).catchError((e){
          print(e);
        });
        day.forEach((m) {
          Movie original = result.firstWhere((o) => o.title == m.title,
              orElse: () => null);
          if (original != null)
            original.times.addAll(m.times);
          else
            result.add(m);
        });
      }
      result.sort((a, b) => a.title.compareTo(b.title));
      return result;
    });
  }

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