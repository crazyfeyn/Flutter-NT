import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application/utils/functions.dart';
import 'package:flutter_application/utils/styles.dart';

class Screen2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Screen2();
  }
}

class _Screen2 extends State<Screen2> {
  int _selectedIndex = 1;
  void _onTapped(int index) {
    if (index != _selectedIndex) {
      setState(() {
        _selectedIndex = index;
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/first');
            break;
          case 1:
            Navigator.pushNamed(context, '/second');
            break;
          case 2:
            Navigator.pushNamed(context, '/third');
            break;
          case 3:
            break;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          children: [
            //! here
            ForTopRow(),
            space(14),
            monthRow(),
            space(17),
            generalSat(),
            space(23),
            ongoing(),
            space(23),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  box1(),
                  space(15),
                  line(),
                  space(15),
                  box2(),
                  space(15),
                  box3(),
                ],
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month, size: 30),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, size: 30),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.profile_circled, size: 30),
            label: "",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF6f64ea),
        unselectedItemColor: Colors.grey,
        onTap: _onTapped,
      ),
    );
  }
}
