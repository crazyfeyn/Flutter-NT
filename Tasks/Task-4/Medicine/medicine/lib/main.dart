import 'package:flutter/material.dart';
import 'package:medicine/screens/screen_1.dart';
import 'package:medicine/screens/screen_2.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF299CFE),
        appBar: AppBar(
          backgroundColor: const Color(0xFF299CFE),
          leading: Container(
            margin: const EdgeInsets.only(left: 6),
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Image.asset(
              "assets/profile.png",
              fit: BoxFit.cover,
            ),
          ),
          actions: const [
            Icon(Icons.message_rounded, color: Colors.white),
            SizedBox(width: 20)
          ],
        ),
        body: SingleChildScrollView(
          child: Screen1(),
        ),
      ),
      routes: {"/second": (context) => Screen2()},
    );
  }
}
