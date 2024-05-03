import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/utils/functions.dart';

class Screen1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Screen1();
  }
}

class _Screen1 extends State<Screen1> {
  int _selectedIndex = 0;
  // static const List<String> _routePath = ['/first', '/second'];

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
            Navigator.pushNamed(context, '/zero');
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
          child: Column(
            children: [
              topRow(),
              space(30),
              middleText1(),
              middleText2(),
              space(30),
              infoBox(),
              space(20),
              monthly(),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //!first
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        boxes(70, 10, "22", "Done", const Color(0xFF5bdbbc)),
                        space(25),
                        boxes(35, 10, "12", "Ongoing", const Color(0xFFfec075))
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        boxes(35, 10, "7", "in Progress",
                            const Color(0xFF5bdbbc)),
                        space(25),
                        boxes(70, 10, "14", "Review", const Color(0xFFfec075))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
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
