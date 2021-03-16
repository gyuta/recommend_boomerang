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
    return AnimatedSwitcher(
        transitionBuilder: (Widget child, Animation<double> animation) {
          final inAnimation =
              Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
                  .animate(animation);
          final outAnimation =
              Tween<Offset>(begin: Offset(-1.0, 0.0), end: Offset(0.0, 0.0))
                  .animate(animation);

          if (child.key == ValueKey(choiced)) {
            return ClipRect(
              child: SlideTransition(
                position: inAnimation,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: child,
                ),
              ),
            );
          } else {
            return ClipRect(
              child: SlideTransition(
                position: outAnimation,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: child,
                ),
              ),
            );
          }
        },
        duration: Duration(seconds: 1),
        child: Container(
          key: ValueKey(choiced),
          child: (remainChoice != 0)
              ? Choice(
                  title: cardContent[choiced]["title"],
                  img: cardContent[choiced]["img"],
                  callback: callBack,
                )
              : Result(point),
        ));
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
