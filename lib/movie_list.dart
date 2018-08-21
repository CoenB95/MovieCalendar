import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movie_calendar/movie.dart';
import 'package:movie_calendar/time_text.dart';

class MovieListPage extends StatelessWidget {
  Future<List<Movie>> _movieFuture;

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
                _movies[index].times.sort((t1, t2) =>
                    t1.start.compareTo(t2.end));
                var nearest = _movies[index].times.first;
                var startingIn = nearest.start.difference(new DateTime.now());
                bool hasStarted = new DateTime.now().isAfter(nearest.start);

                bool startsSoon = startingIn <= new Duration(minutes: 60);

                //return new Card(
                return new ListTile(
                    title: new Text(_movies[index].title

                    ),
                    subtitle: new Row(
                        children: <Widget>[
                          new Expanded(
                              child: new TimeText(nearest)
                          ),
                          new Text('Euroscoop')
                        ])
                );
                //);
              }
          );
        })
    );
  }
}