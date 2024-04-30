import 'package:feynfood/screens/screen_1/screen1.dart';
import 'package:feynfood/screens/screen_1/screen2.dart';
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
      },
    );
  }
}
