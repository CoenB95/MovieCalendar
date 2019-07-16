import 'package:flutter/material.dart';
import 'package:movie_calendar/datetime/datetime_utils.dart';
import 'package:movie_calendar/movie.dart';
import 'package:movie_calendar/movie_list.dart';
import 'package:movie_calendar/movie_parser.dart';
import 'package:movie_calendar/parser/pathe_parser.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MovieListPage(constructCinemaList())
    );
  }
}

Future<List<Movie>> constructCinemaList() async {
  List<MovieParser> parsers = [
    MovieParserPathe()
  ];

  List<Date> dates = [];
  for (int i = 0; i < 7; i++)
    dates.add(Date.today().plus(days: i));

  List<Movie> movies = [];
  for (MovieParser parser in parsers) {
    movies.addAll(await parser.fetchMoviesOfDays(dates));
  }
  return movies;
}