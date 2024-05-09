
import 'package:flutter/material.dart';

extension ext1 on int {
  width() {
    return SizedBox(
      width: this.toDouble(),
    );
  }

  height() {
    return SizedBox(
      height: this.toDouble(),
    );
  }
}
