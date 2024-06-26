import 'package:application/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(430, 932),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainScreen(),
      ),
    );
  }
}
