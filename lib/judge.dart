import 'package:flutter/material.dart';
import 'package:recommend_boomerang/choice.dart';

class Judge extends StatefulWidget {
  @override
  _JudgeState createState() => _JudgeState();
}

class _JudgeState extends State<Judge> {
  int remainChoice = 0;
  int point = 0;

  void callBack(int val) {
    setState(() {
      point += val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(point.toString()),
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
