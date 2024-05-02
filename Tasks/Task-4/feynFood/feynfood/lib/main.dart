import 'package:feynfood/screens/screen_1/screen1.dart';
import 'package:feynfood/screens/screen_1/screen2.dart';
import 'package:feynfood/screens/screen_1/screen3.dart';
import 'package:feynfood/screens/screen_1/screen_last_1.dart';
import 'package:feynfood/screens/screen_1/screen_last_2.dart';
import 'package:feynfood/screens/screen_1/screen_last_3.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenFirst(),
      routes: {
        "/secondpage": (context) => ScreenSecond(),
        "/thirdpage": (context) => Screen3(),
        "/last1": (context) => ScreenLast1(),
        "/last2": (context) => ScreenLast2(),
        "/last3": (context) => ScreenLast3(),
      },
    );
  }
}
