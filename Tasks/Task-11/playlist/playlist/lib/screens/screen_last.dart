import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:playlist/utils/extensions/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playlist/widgets/widgets.dart';

class LastScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LastScreen();
  }
}

// const playOn = CupertinoIcons.play_circle_fill;
// const playOff = CupertinoIcons.pause_circle_fill;
// var chosenPlay = playOn;
IconData currentIcon = CupertinoIcons.play_circle_fill;

class _LastScreen extends State<LastScreen> {
  void toggleIcon() {
    setState(() {
      if (currentIcon == CupertinoIcons.play_circle_fill) {
        currentIcon = CupertinoIcons.pause_circle_fill;
      } else {
        currentIcon = CupertinoIcons.play_circle_fill;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              CupertinoIcons.arrow_left,
              size: 40,
            ),
          ),
          title: "Subscribe".boldStyle(),
          actions: const [
            Icon(
              Icons.menu,
              size: 40,
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  "Subscribe your favourite song to listen r you can just subscribe it"
                      .thinStyle()
                ],
              ),
              10.height(),
              ...List.generate(4, (index) => rowchalar())
            ],
          ),
        ),
      ),
    );
  }
}
