import 'package:flutter/material.dart';
import 'package:flutter_application/screens/main_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: ScreenUtilInit(
      child: MainScreen(),
    ));
  }
}
