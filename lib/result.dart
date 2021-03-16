import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int num;

  Result(int point) : this.num = point % resultContent.length;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("あなたには ${resultContent[num]['title']} がオススメ！"),
            Image.network(
                "https://1.bp.blogspot.com/-zf70t5M0sIU/Uku9Ux59RFI/AAAAAAAAYgY/lWtbiqL5rXE/s800/boomerang_boy.png"),
            Text("オージーとはほげほげする競技です。"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: () {
                      // Navigator.pop(context);
                      Navigator.of(context).pushReplacementNamed("/");
                    },
                    child: Text("もう一度診断")),
                ElevatedButton(onPressed: () {}, child: Text("シェア"))
              ],
            )
          ],
        ),
      ),
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
