import 'package:flutter/material.dart';
import 'package:movie_calendar/datetime/datetime_utils.dart';
import 'package:movie_calendar/movie.dart';
import 'package:movie_calendar/time_text.dart';

class _MovieDetailRow {
  Date headerDate;
  bool get isHeader => headerDate != null;
  MovieTime time;

  _MovieDetailRow(this.time);

  _MovieDetailRow.header(this.headerDate);
}

class MovieDetailPage extends StatelessWidget {
  final Movie _movie;

  MovieDetailPage(this._movie);

  @override
  Widget build(BuildContext context) {
    List<_MovieDetailRow> flatList = [];
    _movie.times.forEach((k, l) {
      flatList.add(new _MovieDetailRow.header(k));
      l.forEach((t) => flatList.add(new _MovieDetailRow(t)));
    });
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(_movie.title),
        ),
        body: new ListView.builder(
            itemCount: flatList.length,
            itemBuilder: (context, index) {
              var mov = flatList[index];
              return new Padding(padding: new EdgeInsets.all(2.5),
                  child: mov.isHeader
                      ? Text(mov.headerDate.format(), style: TextStyle(fontWeight: FontWeight.bold),)
                      : TimeText(mov.time)
              );
            }
        )
    );
  }
}