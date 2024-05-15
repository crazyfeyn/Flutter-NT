import 'package:flutter/material.dart';
import 'package:flutter_application/pages/inputText.dart';
import 'package:flutter_application/pages/screen_1.dart';
import 'package:flutter_application/pages/tabbarview.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InputText(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
