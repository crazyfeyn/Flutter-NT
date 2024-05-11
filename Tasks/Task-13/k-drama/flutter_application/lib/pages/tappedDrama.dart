import 'package:flutter/material.dart';
import 'package:flutter_application/utils/extensions.dart';
import 'package:flutter_application/utils/tools.dart';
import 'package:flutter_application/widgets/widget_main.dart';

class TappedDrama extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TappedDramaState();
  }
}

class _TappedDramaState extends State<TappedDrama> {
  bool chosen1 = true;
  bool chosen2 = false;
  bool chosen3 = false;

  chosenToggle(bool ch1, bool ch2, bool ch3) {
    setState(() {
      chosen1 = ch1;
      chosen2 = ch2;
      chosen3 = ch3;
    });
  }

  trailerToggleSwitch(int number) {
    setState(() {
      switch (number) {
        case 1:
          Tools.trailerSectionBool1 = true;
          Tools.trailerSectionBool2 = false;
          Tools.trailerSectionBool3 = false;
          break;
        case 2:
          Tools.trailerSectionBool2 = true;
          Tools.trailerSectionBool1 = false;
          Tools.trailerSectionBool3 = false;
          break;
        case 3:
          Tools.trailerSectionBool3 = true;
          Tools.trailerSectionBool1 = false;
          Tools.trailerSectionBool2 = false;
          break;
        default:
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF14191F),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                mainFilmImage(context),
                20.height(),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      kDramaName(),
                      10.height(),
                      starSection(),
                      20.height(),
                      playButtons(),
                      15.height(),
                      genreText(),
                      5.height(),
                      viewMoreText(),
                      actorInfoScroll(),
                      trailersSection(chosen1, chosen2, chosen3, chosenToggle,
                          trailerToggleSwitch),
                      13.height(),
                      if (Tools.trailerSectionBool1) trailerTapped(),
                      if (Tools.trailerSectionBool2)
                        moreLikeThisTapped(context),
                      if (Tools.trailerSectionBool3) commentSection()
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
