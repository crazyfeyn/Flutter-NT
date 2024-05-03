import 'package:flutter/material.dart';

abstract class AppColor {
  static const primaryHeadlineColor = Colors.red;
}

abstract class AppTextStyles {
  static const headline = TextStyle(
    color: Colors.red,
    fontSize: 30,
    fontWeight: FontWeight.w600,
  );

  static const coloredHeadline = TextStyle(
    color: Colors.red,
    fontSize: 25,
    fontWeight: FontWeight.w800,
  );
}

abstract class AllMyStyles {}
