import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:movie_calendar/movie.dart';
import 'package:xml/xml.dart' as xml;

abstract class MovieParser {

  Future<List<Movie>> fetchMoviesOfDay(DateTime date);
}