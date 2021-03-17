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
        appBar: AppBar(
          title: Text("おすすめブーメラン競技診断"),
        ),
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: <Widget>[
              Positioned(
                height: 50.0,
                bottom: 0,
                right: 0,
                left: 0,
                child: TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: 0.0, end: progress),
                  duration: const Duration(seconds: 1),
                  builder: (context, value, _) =>
                      LinearProgressIndicator(value: value),
                ),
              ),
              Positioned(
                bottom: 80,
                top: 20,
                // left: 20,
                // right: 20,
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Judge(
                    callback: setProgress,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
