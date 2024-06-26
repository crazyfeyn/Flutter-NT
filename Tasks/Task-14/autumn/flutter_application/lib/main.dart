import 'package:flutter/material.dart';
import 'package:flutter_application/pages/page_main.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageMain(),
    );
  }
}
