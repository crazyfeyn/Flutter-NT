import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension heightWidth on int {
  height() {
    return SizedBox(height: this.toDouble());
  }

  width() {
    return SizedBox(width: this.toDouble());
  }
}

abstract class smth {
  static const number = "10.000+";
  static const weight = FontWeight.w700;

  static Text createText() {
    return const Text(
      number,
      style: TextStyle(fontWeight: weight),
    );
  }
}

extension Style on String {
  boldStyle() {
    return Text(
      this,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
    );
  }
}

// List<Widget> Invitation() {
//   List<Widget> lst = [Image.asset("assets/images/timeline.png")];
// }
