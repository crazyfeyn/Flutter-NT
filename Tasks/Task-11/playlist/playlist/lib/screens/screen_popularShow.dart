import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playlist/utils/extensions/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playlist/widgets/widgets.dart';

class PopularShowScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PopularShowScreenState();
  }
}

// const playOn = CupertinoIcons.play_circle_fill;
// const playOff = CupertinoIcons.pause_circle_fill;
// var chosenPlay = playOn;
IconData currentIcon = CupertinoIcons.play_circle_fill;

class _PopularShowScreenState extends State<PopularShowScreen> {
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
          title: "Popular shows".boldStyle(),
          actions: const [
            Icon(
              Icons.menu,
              size: 40,
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              15.height(),
              popularLinux(),
              20.height(),
              playAll(context),
              30.height(),
              scrollSect(toggleIcon, currentIcon)
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: const Icon(
                  CupertinoIcons.home,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.format_shapes,
                ),
                label: "Categories"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.music_note,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.profile_circled,
                ),
                label: "Categories"),
          ],
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey.shade600,
        ),
      ),
    );
  }
}
