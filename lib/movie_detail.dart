import 'package:flutter/material.dart';
import 'package:movie_calendar/movie.dart';
import 'package:movie_calendar/time_text.dart';

class MovieDetailPage extends StatelessWidget {
  final Movie _movie;

  MovieDetailPage(this._movie);

  @override
  Widget build(BuildContext context) {
    List<MovieTime> flatList = [];
    _movie.times.values.forEach((l) => flatList.addAll(l));
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(_movie.title),
        ),
        body: new ListView.builder(
            itemCount: flatList.length,
            itemBuilder: (context, index) {
              return new Padding(padding: new EdgeInsets.all(2.5),
                  child: TimeText(flatList[index])
              );
            }
        )
    );
  }
}