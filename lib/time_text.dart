import 'dart:async';

import 'package:flutter/material.dart';
import 'package:movie_calendar/datetime/time_utils.dart';
import 'package:movie_calendar/movie.dart';

class TimeText extends StatefulWidget {
  final MovieTime time;

  TimeText(this.time);

  @override
  State<TimeText> createState() => new TimeTextState();
}

class TimeTextState extends State<TimeText> {
  bool get hasStarted => startingIn <= Duration.zero;
  bool get justStarted => hasStarted && startingIn > new Duration(minutes: -5);

  Duration _startingIn;
  Duration get startingIn => _startingIn;

  bool get startsSoon => startingIn <= new Duration(minutes: 60) &&
      startingIn > Duration.zero;

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
      _startingIn = widget.time.start.difference(Time.now());
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Text(
        justStarted ? 'Just started' :
        (startsSoon ? '${startingIn.inMinutes + 1} min' :
        widget.time.start.format()),
        style: new TextStyle(
            color:
            hasStarted
                ? (justStarted ? Colors.red : Colors.grey)
                : (startsSoon ? Colors.orange : Colors.green)
        )
    );
  }
}