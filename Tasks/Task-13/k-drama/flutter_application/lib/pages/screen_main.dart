import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/utils/extensions.dart';
import 'package:flutter_application/widgets/widget_main.dart';

class ScreenMain extends StatefulWidget {
  @override
  _ScreenMainState createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF14191F),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 40),
        child: Center(
          child: Column(
            children: [
              15.height(),
              topAppbar(),
              20.height(),
              scrollDramas(context)
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF14191F),
        selectedLabelStyle:
            const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        unselectedLabelStyle: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.compass), label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bookmark), label: "My List"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cloud_download), label: "Download"),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled), label: "Profile"),
        ],
        currentIndex: 1,
        unselectedItemColor: Colors.grey.shade600,
        selectedItemColor: const Color(0xFF830FE2),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
