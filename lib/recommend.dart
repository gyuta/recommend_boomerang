import 'package:flutter/material.dart';
import 'package:recommend_boomerang/judge.dart';

class Recommend extends StatefulWidget {
  @override
  _RecommendState createState() => _RecommendState();
}

class _RecommendState extends State<Recommend> {
  double progress = 0;

  void setProgress(double val) {
    setState(() {
      progress = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Judge(callback: setProgress)),
        LinearProgressIndicator(
          value: progress,
          minHeight: 40,
        )
      ],
    )));
  }
}
