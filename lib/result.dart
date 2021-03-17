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
            // Image.network(
            //     "https://1.bp.blogspot.com/-zf70t5M0sIU/Uku9Ux59RFI/AAAAAAAAYgY/lWtbiqL5rXE/s800/boomerang_boy.png"),
            Text("${resultContent[num]['desc']}"),
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
    "desc":
        "5回キャッチするまでの時間を競うもっともオーソドックスな競技です。スピードとキャッチの容易さを両立させるテクニックが重要になってきます。また、ブルズアイ（投げる場所）の近くでキャッチすることやキャッチしてから次の一投までいかにスムーズに繋ぐかなど非常に奥の深い協議と言えるでしょう"
  },
  {
    "title": "アキュラシー",
    "desc":
        "公式戦の種目の中では唯一ブーメランをキャッチする必要がない競技です。ブルズアイ（投げる場所）からブーメランが落ちた位置で点数が決まり、いかに近くに落とすかを競います。風の影響も強く、場合によっては初心者でも高得点を狙える初心者にも優しい競技と言えるでしょう。"
  },
  {
    "title": "トリック",
    "desc":
        "指定された方法でブーメランをキャッチできるかを競う競技です。キャッチ方法は片手キャッチから始まり、上から抑え込むようにキャッチするイーグルや、背中でキャッチする背面キャッチ、最終的には足でキャッチする足キャッチまで多岐に渡ります。失敗するまで続くので理論上は∞点が可能な唯一の競技です。",
  },
  {
    "title": "オージー",
    "desc":
        "オージーというかなり飛距離の出るブーメランを使った競技です。ブーメランと聞いて多くの人が思い浮かべる2枚翼のものがオージーです。飛距離(30m 40m 50m)、キャッチの不可、戻ってきた場所の３要素で得点が決まるため、ブーメランの基本に忠実な競技と言えるでしょう。"
  },
  {
    "title": "MTA",
    "desc":
        "滞空時間を競う競技です。多くの場合は風によって上空のブーメランが流されていくため、川や薮の中に墜落してブーメランをロストしやすいという場所と風を考えないと非常に危険な競技です。"
  },
  {
    "title": "エンデュランス",
    "desc":
        "5分間にブーメランを何回キャッチできたかを競う名前通りの’耐久’勝負です。競技後は非常に疲れるため、大会や練習ではもっとも最後に行われることの多い競技です。"
  },
  {
    "title": "カイリー",
    "desc": "カイリーを投げて遠くの的を狙う非公式競技です。カイリーは戻ってこないブーメランなので、投げたら取りに行くのが大変です。"
  }
];
