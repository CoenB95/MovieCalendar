import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movie_calendar/movie.dart';

class TimeText extends StatefulWidget {
  final MovieTime time;

  TimeText(this.time);

  @override
  State<TimeText> createState() => new TimeTextState();
}

class TimeTextState extends State<TimeText> {
  bool _hasStarted = false;
  bool get hasStarted => _hasStarted;

  Duration _startingIn;
  Duration get startingIn => _startingIn;

  bool _startsSoon = false;
  bool get startsSoon => _startsSoon;

  Timer timer;

  @override
  void initState() {
    super.initState();
    updateTime();
    timer = new Timer.periodic(new Duration(seconds: 15), (t) => updateTime());
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  void updateTime() {
    setState(() {
      _startingIn = widget.time.start.difference(new DateTime.now());
      _hasStarted = new DateTime.now().isAfter(widget.time.start);
      _startsSoon = startingIn <= new Duration(minutes: 60);
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Text(
        hasStarted ? 'Just started' : (
            startsSoon ? '${startingIn
                .inMinutes} min' :
            MovieTime.timeFormat.format(
                widget.time.start)),
        style: new TextStyle(
            color: hasStarted
                ? Colors.red
                : (startsSoon
                ? Colors.orange
                : Colors.green)
        )
    );
  }
}