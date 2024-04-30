import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/homwework.dart';

void main(List<String> args) {
  runApp(Course());
}

class Course extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeWorkScreen());
  }
}
