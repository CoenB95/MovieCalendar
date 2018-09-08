import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:movie_calendar/datetime/datetime_utils.dart';
import 'package:movie_calendar/movie.dart';
import 'package:movie_calendar/movie_parser.dart';

class MovieParserEuroscoop extends MovieParser {

  @override
  Future<List<Movie>> fetchMoviesOfDay(Date date) {
    return new Future(() async {
      var dayOffset = new Date.today().daysTill(date);
      await http.get('https://www.euroscoop.nl/tilburg/system/'
          'cinema-performances/?id=1&offset=$dayOffset').then((r) {
        print('Received response');
        String source = r.body;
      });
    });
  }
}