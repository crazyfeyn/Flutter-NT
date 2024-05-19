import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension ext1 on int {
  width() {
    return SizedBox(
      width: toDouble().sp,
    );
  }

  height() {
    return SizedBox(
      height: toDouble().sp,
    );
  }
}
