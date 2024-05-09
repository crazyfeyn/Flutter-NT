
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playlist/utils/extensions/extensions.dart';
import 'package:playlist/widgets/widgets.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainScreenState();
  }
}

const playOn = CupertinoIcons.play_circle_fill;
const playOff = CupertinoIcons.pause_circle_fill;
var chosenPlay = playOn;

class _MainScreenState extends State<MainScreen> {
  IconData currentIcon = CupertinoIcons.play_circle_fill;
  @override
  Widget build(BuildContext context) {
    void toggleIcon() {
      setState(() {
        if (currentIcon == CupertinoIcons.play_circle_fill) {
          currentIcon = CupertinoIcons.pause_circle_fill;
        } else {
          currentIcon = CupertinoIcons.play_circle_fill;
        }
      });
    }

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 80.h, horizontal: 10.w),
        child: Center(
          child: Column(
            children: [
              linuxStack(toggleIcon, currentIcon),
              35.height(),
              "Podcast".boldStyle(),
              3.height(),
              "Listen your favourite Podcast".thinStyle(),
              "Anywhere, Anytime".thinStyle(),
              40.height(),
              inkwellBtn(context),
              15.height(),
              inkwellBtnWhite(context)
            ],
          ),
        ),
      ),
    );
  }
}
