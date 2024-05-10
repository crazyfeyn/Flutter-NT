import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/utils/widgets.dart';

List<String> recentTextLst = [
  "Marvel",
  "Cpatain America",
  "Captain Marvel",
  "Mask"
];

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainpageState();
  }
}

int _selectedIndex = 0;
var _curIcon = CupertinoIcons.play_circle_fill;
List playLst = [_curIcon, _curIcon];

class _MainpageState extends State<MainPage> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void toggleIcon(int i) {
    setState(() {
      playLst[i] = playLst[i] == CupertinoIcons.play_circle_fill
          ? CupertinoIcons.pause_circle_fill
          : CupertinoIcons.play_circle_fill;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgetOptions = [
      mainPageRoute(recentTextLst, _selectedIndex, _onItemTapped),
      searchPageRoute(),
      donwloadPageRoute(playLst, toggleIcon, context)
    ];
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Color(0xFF06041F)),
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home, size: 30), label: ""),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.search, size: 30), label: ""),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.bookmark, size: 30), label: ""),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.download_circle, size: 30),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.profile_circled, size: 30), label: "")
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: const Color(0xFF4037B0),
          unselectedItemColor: Colors.grey.shade600,
        ),
      ),
    );
  }
}
