import 'package:card_app/screens/screen2.dart';
import 'package:card_app/screens/screen_1.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Screen1(),
        ),
        routes: {"/second": (context) => Screen2()});
  }
}
