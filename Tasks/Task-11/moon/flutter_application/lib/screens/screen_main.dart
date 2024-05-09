import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;
    // AppBar().preferredSize.height -
    // MediaQuery.of(context).viewPadding.top;
    bool isPhone = MediaQuery.of(context).size.width <= 730;
    return Scaffold(
        body: SingleChildScrollView(
            child: Expanded(
      child: Container(
        color: Color(0xFF230843),
        width: double.infinity,
        // height: double.infinity,
        child: Container(
            child: isPhone
                ? mobileRes(isPhone, screenH, screenW)
                : desktopRes(isPhone, screenH, screenW)),
      ),
    )));
  }
}
