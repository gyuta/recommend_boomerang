import 'package:flutter/material.dart';

class Cover extends StatelessWidget {
  final Function callback;
  Cover({this.callback});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("謎に包まれた部分の多いスポーツブーメランですが、たくさんの競技があるのをご存知ですか？"),
              Text("滞空時間を競うものからキャッチ回数を競うもの、果ては決められた姿勢でキャッチするものまで様々です。"),
              Text("ここでは簡単な質問に答えて頂くだけで、みなさんにおすすめの競技を提案します。"),
              Text("是非一度使ってみてください。"),
              ElevatedButton(
                  onPressed: () {
                    callback(0);
                  },
                  child: Text("診断する"))
            ],
          )),
    );
  }
}
