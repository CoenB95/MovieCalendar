import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:movie_calendar/movie.dart';
import 'package:xml/xml.dart' as xml;

class MovieParser {
  static final int _midnightHour = 4;
  static final DateFormat _dateFormatPathe = new DateFormat('d-MM-y');
  static final DateFormat _dateTimeFormatPathe = new DateFormat('dd-MM-y HH:mm');

  Future<List<Movie>> parsePathe(DateTime date) {
    return new Future(() async {
      List<Movie> result = [];

      await http.get('https://www.pathe.nl/update-schedule/19/'
          '${_dateFormatPathe.format(date)}').then((r) {
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
                movieTime.start = _dateTimeFormatPathe.parse(
                    _dateFormatPathe.format(date) + ' ' + rawStartTime);
                if (movieTime.start.hour < _midnightHour)
                  movieTime.start = movieTime.start.add(new Duration(days: 1));

                //Parse end time
                String rawEndTime = timeSpan.findAllElements('span')
                    .firstWhere((e) =>
                "schedule-time__end" == e.getAttribute('class'),
                    orElse: () => null)?.text;
                movieTime.end = _dateTimeFormatPathe.parse(
                    _dateFormatPathe.format(date) + ' ' + rawEndTime);
                if (movieTime.end.hour < _midnightHour)
                  movieTime.end = movieTime.end.add(new Duration(days: 1));

                movie.times.add(movieTime);
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