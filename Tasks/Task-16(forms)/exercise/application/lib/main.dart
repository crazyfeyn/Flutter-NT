import 'package:application/screens/task_3.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainScreen());
}

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainScreen();
  }
}

class _MainScreen extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Task3());
  }
}
