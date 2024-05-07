import 'package:flutter/material.dart';

class SizeUtils {
  static width(context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth;
  }

  static height(context) {
    // double screenHeight = MediaQuery.of(context).size.height;
    double screenHeight = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).viewPadding.top;
    return screenHeight;
  }
}
