import 'package:flutter/material.dart';

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
          child: getCard(),
        )
      ],
    )));
  }
}

Widget getCard() {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Image.network(
              "https://3.bp.blogspot.com/-h9SmHXv1p8Y/VufYWGJLuXI/AAAAAAAA43U/qbpAradgSTMGdO2NVLpu5nmyddmUWFs0w/s800/kids_kenka.png",
              width: 300),
          Text("人を殴ったことがある？"),
          getButtonsRow(),
        ],
      ),
    ),
  );
}

Widget getButtonsRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      ElevatedButton(onPressed: () {}, child: Text("いいえ")),
      ElevatedButton(onPressed: () {}, child: Text("はい"))
    ],
  );
}
