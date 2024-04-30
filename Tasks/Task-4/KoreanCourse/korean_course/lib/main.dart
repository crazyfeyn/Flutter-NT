import 'package:flutter/material.dart';
import 'package:korean_course/screens/firstScreen/screen_1.dart';
import 'package:korean_course/screens/secondScreen/screen_2.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Image.asset("assets/images/profile.png"),
          title: const Text(
            "Hi, John Smith 👋",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          actions: [
            Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black)),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notification_add),
                iconSize: 30,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [FirstScreen()],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.disc_full),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.man),
              label: 'Profile',
            ),
          ],
          selectedItemColor: const Color(0xFF7974FE),
          unselectedItemColor: Colors.grey.shade500,
          iconSize: 35,
        ),
      ),
      routes: {'/second': (context) => const SecondScreen()},
    );
  }
}
