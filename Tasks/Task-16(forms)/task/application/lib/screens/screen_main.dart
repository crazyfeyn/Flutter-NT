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

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(0),
        child: Center(
          child: Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Page_first(),
                Page_second(),
                Page_third(),
                Page_fouth(),
                Page_fifth(),
                const Home(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: TabBar(
        controller: _tabController,
        tabs: const [
          Tab(text: 'First'),
          Tab(text: 'Second'),
          Tab(text: 'Third'),
          Tab(text: 'Fourth'),
          Tab(text: 'Fifth'),
          Tab(text: 'Home'),
        ],
      ),
    );
  }
}
