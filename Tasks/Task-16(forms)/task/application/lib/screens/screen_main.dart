import 'package:application/classes/page_fifth.dart';
import 'package:application/classes/page_first.dart';
import 'package:application/classes/page_fourth.dart';
import 'package:application/classes/page_second.dart';
import 'package:application/classes/page_sixth.dart';
import 'package:application/classes/page_third.dart';
import 'package:application/utils/extensions.dart';
import 'package:application/utils/tools.dart';
import 'package:application/widgets/general_widgets.dart';
import 'package:flutter/material.dart';

class ScreenMain extends StatelessWidget {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(0),
            child: Center(
                child: Expanded(
                    child: TabBarView(
              children: [
                Page_first(),
                Page_second(),
                Page_third(),
                Page_fouth(),
                Page_fifth(),
                const Home()
              ],
            ))),
          ),
        ));
  }
}
