import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/screens/screen_0.dart';
import 'package:flutter_application/screens/screen_1.dart';
import 'package:flutter_application/screens/screen_2.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
      routes: {
        '/first': (context) => Screen1(),
        '/second': (context) => Screen2(),
        '/zero': (context) => Screen0(),
      },
    );
  }
}
