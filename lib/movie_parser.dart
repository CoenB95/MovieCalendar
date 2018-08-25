import 'dart:async';

import 'package:movie_calendar/datetime/date_utils.dart';
import 'package:movie_calendar/movie.dart';

abstract class MovieParser {

  Future<List<Movie>> fetchMoviesOfDay(Date date);
}