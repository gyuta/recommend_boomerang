import 'package:flutter/material.dart';
import 'package:recommend_boomerang/choice.dart';
import 'package:recommend_boomerang/result.dart';

class Judge extends StatefulWidget {
  final Function callback;

  Judge({this.callback});

  @override
  _JudgeState createState() => _JudgeState();
}

class _JudgeState extends State<Judge> {
  int choiced = 0;
  int remainChoice = cardContent.length;
  int point = 0;

  void callBack(int val) {
    setState(() {
      choiced++;
      remainChoice--;
      point += val;
    });
    var progress = choiced / cardContent.length;
    widget.callback(progress);
  }

  @override
  Widget build(BuildContext context) {
    // return Choice(
    //   title: cardContent[0]["title"],
    //   img: cardContent[0]["img"],
    //   callback: callBack,
    // );

    return Stack(
      children: [
        if (remainChoice == 0)
          Result(point)
        else
          for (var i in cardContent)
            Choice(
              title: i["title"],
              img: i["img"],
              callback: callBack,
            )
      ],
    );
  }
}

const List<Map<String, String>> cardContent = [
  {
    "title": "我慢強いほうだ",
    "img":
        "https://3.bp.blogspot.com/-CqYmAclTr3Y/VlaCvXbhDGI/AAAAAAAA1B8/evIAehX02pA/s180-c/medical_geppu_gaman.png"
  },
  {
    "title": "人を殴ったことがある",
    "img":
        "https://1.bp.blogspot.com/-Ud3Ndr6_SD4/WZVg5YDdQSI/AAAAAAABGFw/FTym1iJJqqkSaFVxbLHR3gOe0-oALH7XwCLcBGAs/s400/kenka_karamu_man.png"
  },
  {
    "title": "野球経験がある",
    "img":
        "https://3.bp.blogspot.com/-Gr6f-H1rXko/Wi4fz7xuGdI/AAAAAAABIq4/_ngtRKC44XwlZTul6ex_lev2lDOEN1TKwCLcBGAs/s450/baseball_pitcher_overthrow.png"
  },
];
