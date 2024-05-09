import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height-AppBar().preferredSize.height-MediaQuery.of(context).viewPadding.top;
    return Scaffold(
        // body: ,
        );
  }
}
