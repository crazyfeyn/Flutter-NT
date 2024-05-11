import 'package:flutter/material.dart';
import 'package:flutter_application/pages/screen_main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenUtilInit(
        child: ScreenMain(),
      ),
    );
  }
}
