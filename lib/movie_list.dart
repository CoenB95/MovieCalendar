import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movie_calendar/movie.dart';
import 'package:movie_calendar/time_text.dart';

class MovieListPage extends StatelessWidget {
  final Future<List<Movie>> _movieFuture;

  MovieListPage(this._movieFuture);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Movies'),
        ),
        body: new FutureBuilder<List<Movie>>(
            future: _movieFuture,
            builder: (context, snapshot) {
          if (!snapshot.hasData)
            return new Center(
              child: new CircularProgressIndicator()
            );

          List<Movie> _movies = snapshot.data;

          return new ListView.builder(
              itemCount: _movies.length,
              itemBuilder: (context, index) {
                Movie movie = _movies[index];
                return new ListTile(
                    title: new Text(movie.title

                    ),
                    subtitle: new Row(
                        children: createShowTimesRow(movie)
                    )
                );
              }
          );
        })
    );
  }

  List<Widget> createShowTimesRow(Movie movie, {int maxColumns = 0}) {
    List<Widget> result = [];

    if (movie == null)
      return result;

    List<MovieTime> timesOfToday = movie.times.where((t) =>
        t.startsAtDate(new DateTime.now())).toList();

    if (timesOfToday.isEmpty) {
      result.add(
          new Text("No shows today",
              style: new TextStyle(
                  color: Colors.grey
              )
          )
      );
      return result;
    }

    if (maxColumns <= 0)
      maxColumns = timesOfToday.length;

    for (int i = 0; i < maxColumns; i++) {
      result.add(
        new Padding(
          padding: new EdgeInsets.only(right: 10.0),
          child: new TimeText(timesOfToday[i])
        )
      );
    }

    return result;
  }
}