import 'package:flutter/material.dart';
import 'package:recommend_boomerang/choice.dart';

class Recommend extends StatefulWidget {
  @override
  _RecommendState createState() => _RecommendState();
}

class _RecommendState extends State<Recommend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Choice(title: "我慢強いほうだ"),
                Choice(title: "人を殴ったことがある"),
                Choice(title: "野球経験がある"),
              ],
            ))
      ],
    )));
  }
}
