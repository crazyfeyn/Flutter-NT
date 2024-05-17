import 'package:application/classes/page_fifth.dart';
import 'package:application/classes/page_first.dart';
import 'package:application/classes/page_fourth.dart';
import 'package:application/classes/page_second.dart';
import 'package:application/classes/page_sixth.dart';
import 'package:application/classes/page_third.dart';
import 'package:flutter/material.dart';

class ScreenMain extends StatefulWidget {
  @override
  _ScreenMainState createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  void togglePageAdd() {
    _tabController.index++;
    setState(() {});
  }

  void toggleSignIn() {
    _tabController.index = 1;
    setState(() {});
  }

  void togglePageRemove() {
    _tabController.index--;
    setState(() {});
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              Page_first(togglePageAdd: togglePageAdd),
              Page_second(togglePageAdd: togglePageAdd),
              Page_third(
                  togglePageAdd: togglePageAdd,
                  togglePageRemove: togglePageRemove,
                  toggleSignIn: toggleSignIn),
              Page_fouth(
                  togglePageAdd: togglePageAdd,
                  togglePageRemove: togglePageRemove),
              Page_fifth(
                  togglePageAdd: togglePageAdd,
                  togglePageRemove: togglePageRemove),
              Home(togglePageAdd: togglePageAdd),
            ],
          ),
        ),
      ),
    );
  }
}
