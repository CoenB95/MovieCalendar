import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movie_calendar/datetime/date_utils.dart';
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
          title: new Text('Movies'),
        ),
        body: new ListView.builder(
            itemCount: flatList.length,
            itemBuilder: (context, index) {
              return new ListTile(
                  subtitle: new Text(flatList[index].start.format())
              );
            }
        )
    );
  }
}