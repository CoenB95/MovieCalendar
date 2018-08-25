import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:movie_calendar/datetime/date_utils.dart';
import 'package:movie_calendar/datetime/time_utils.dart';
import 'package:movie_calendar/movie.dart';
import 'package:movie_calendar/movie_parser.dart';
import 'package:xml/xml.dart' as xml;

class MovieParserPathe extends MovieParser {

  @override
  Future<List<Movie>> fetchMoviesOfDay(Date date) {
    return new Future(() async {
      List<Movie> result = [];

      await http.get('https://www.pathe.nl/update-schedule/19/'
          '${date.format()}').then((r) {
        print('Received response');
        String source = r.body;

        //Prepend wrapping div around loose items.
        source = '<div>' + source + '</div>';
        //Remove buggy img tags (not closed well) completely; we don't use them (yet).
        source = source.replaceAll(new RegExp(r'<img .*>'), '');

        xml.XmlDocument document = xml.parse(source);

        //Detect individual movies (wrapper)
        var list = document
            .findElements('div')
            .first
            .findElements('div')
            .where((e) => "schedule__section" == e.getAttribute('class'))
            .toList(growable: false);

        print('Found ${list.length} movies.');

        list.forEach((item) {
          Movie movie = new Movie();

          //Parse title
          movie.title = item
              .findElements('figcaption')
              .first
              ?.findAllElements('h4')
              ?.first
              ?.findAllElements('a')
              ?.first
              ?.text
              ?.trim();

          movie.times.putIfAbsent(date, () => []);

          //Detect individual movies (wrapper)
          var wrapper = item.findElements('div')
              .firstWhere((e) => "schedule__wrapper" == e.getAttribute('class'),
              orElse: () => null);

          if (wrapper != null) {
            //Detect list of times (schedule-block)
            var timesList = wrapper.findElements('div')
                .firstWhere((e) =>
            "schedule__container js-schedule-block" == e.getAttribute('class'),
                orElse: () => null);

            if (timesList != null) {
              var times = timesList.findElements('a');

              times.forEach((timeSpan) {
                MovieTime movieTime = new MovieTime();

                //Parse start time
                String rawStartTime = timeSpan.findAllElements('span')
                    .firstWhere((e) =>
                "schedule-time__start" == e.getAttribute('class'),
                    orElse: () => null)?.text;
                movieTime.start = Time.parse(rawStartTime);
                if (movieTime.start.isBefore(new Time(4, 0)))
                  movieTime.start = movieTime.start.add(hours: 24);

                //Parse end time
                String rawEndTime = timeSpan.findAllElements('span')
                    .firstWhere((e) =>
                "schedule-time__end" == e.getAttribute('class'),
                    orElse: () => null)?.text;
                movieTime.end = Time.parse(rawEndTime);
                if (movieTime.end.isBefore(new Time(4, 0)))
                  movieTime.end = movieTime.end.add(hours: 24);

                movie.times[date].add(movieTime);
              });
            }
          }
          result.add(movie);
        });
        print(result);
      });
      return result;
    });
  }
}