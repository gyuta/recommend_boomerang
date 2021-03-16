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
    // return Scaffold(
    //     body: Center(
    //         child: Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Judge(callback: setProgress)),
    //     LinearProgressIndicator(
    //       value: progress,
    //       minHeight: 40,
    //     )
    //   ],
    // )));
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Positioned(
            height: 50.0,
            bottom: 0,
            right: 0,
            left: 0,
            child: LinearProgressIndicator(
              value: progress,
              // minHeight: 40,
            )),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Judge(
            callback: setProgress,
          ),
        ),
      ],
    ));
  }
}
