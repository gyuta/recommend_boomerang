import 'package:flutter/material.dart';
import 'package:recommend_boomerang/choice.dart';
import 'package:recommend_boomerang/result.dart';
import 'package:recommend_boomerang/cover.dart';

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
              Tween<Offset>(begin: Offset(2.0, 0.0), end: Offset(0.0, 0.0))
                  .animate(animation);
          final outAnimation =
              Tween<Offset>(begin: Offset(-2.0, 0.0), end: Offset(0.0, 0.0))
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
        switchInCurve: Curves.easeInOut,
        switchOutCurve: Curves.easeInOut,
        child: Container(
          key: ValueKey(choiced),
          child: (choiced == 0)
              ? Cover(
                  callback: callBack,
                )
              : (remainChoice != 0)
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
  {"title": "カバー用"},
  {
    "title": "体力には自信がある",
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
  {
    "title": "人を待つより待たせる方が多い",
    "img":
        "https://3.bp.blogspot.com/-bmafUWSxMik/V0V39oogGRI/AAAAAAAA7Aw/tOYtjPyVX9IUKV0Fk4EPYGk7Y9j5zDqjwCLcB/s800/hashiru_syokupan_woman.png"
  },
  {
    "title": "精密さを求められる作業は苦手だ",
    "img":
        "https://1.bp.blogspot.com/-q_Zz3agfJ3U/X3hGNucIFoI/AAAAAAABbp8/Nod5_-jeoQQz_ZIh42hcyYsc3olDAjleQCNcBGAsYHQ/s1600/rock_balancing.png"
  },
  {
    "title": "足で物を掴むことが多い",
    "img":
        "https://1.bp.blogspot.com/-Yfxqma76CcM/XY7TScbaTqI/AAAAAAABVLY/EOB5BQOxOp4AYHGkIuAASolFFjnryTQ8gCNcBGAsYHQ/s1600/sports_sepak_takraw_sepatakuro_man.png"
  },
  {
    "title": "何事もテキパキと取り組む方だ",
    "img":
        "https://3.bp.blogspot.com/-xkYdvibVSeI/U5l5l8eu8II/AAAAAAAAhRY/_jeBSG1cRKE/s800/shigoto_tekipaki.png"
  },
  {
    "title": "世界に挑戦したい",
    "img":
        "https://4.bp.blogspot.com/-14ly7lSqWfc/Wq9-uBU5nAI/AAAAAAABK-4/z3m0vZaMeqUO65jhtFlsaTCK3jv09KoPwCLcBGAs/s800/trophy_man.png"
  }
];
