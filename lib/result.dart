import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int num;

  Result(int point) : this.num = point % resultContent.length;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Text(resultContent[num]["title"]),
    );
  }
}

const List<Map<String, String>> resultContent = [
  {
    "title": "FC(ファストキャッチ)",
  },
  {
    "title": "アキュラシー",
  },
  {
    "title": "トリック",
  },
  {"title": "オージー"},
  {"title": "MTA"},
  {"title": "エンデュランス"}
];
