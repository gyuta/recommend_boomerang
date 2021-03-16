import 'package:flutter/material.dart';

class Choice extends StatefulWidget {
  final String title;
  final String img;

  Choice({this.title, this.img});

  @override
  _ChoiceState createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Image.network(widget.img, width: 300),
              Text(widget.title),
              getButtonsRow(),
            ],
          ),
        ),
      ),
    );
  }

  Widget getButtonsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ElevatedButton(
            onPressed: () {
              setState(() {
                isVisible = false;
              });
            },
            child: Text("いいえ")),
        ElevatedButton(
            onPressed: () {
              setState(() {
                isVisible = false;
              });
            },
            child: Text("はい"))
      ],
    );
  }
}
