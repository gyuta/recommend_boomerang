import 'package:flutter/material.dart';

class Choice extends StatefulWidget {
  final String title;
  final String img;
  final Function callback;

  Choice({this.title, this.img, this.callback});

  @override
  _ChoiceState createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: true,
      child: Card(
        key: UniqueKey(),
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(widget.img, width: 250, height: 250),
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
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
            onPressed: () {
              setState(() {
                isVisible = false;
              });
              widget.callback(0);
            },
            child: Text("いいえ")),
        ElevatedButton(
            onPressed: () {
              setState(() {
                isVisible = false;
              });
              widget.callback(1);
            },
            child: Text("はい"))
      ],
    );
  }
}
