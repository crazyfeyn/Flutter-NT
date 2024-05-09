import 'package:flutter/material.dart';

extension ex1 on String {
  boldStyle() {
    return Text(
      this,
      style: const TextStyle(
          color: Colors.black, fontWeight: FontWeight.w700, fontSize: 30),
    );
  }

  thinStyle() {
    return Text(
      this,
      style: TextStyle(
          color: Colors.grey.shade600,
          fontWeight: FontWeight.w600,
          fontSize: 17),
    );
  }
}

extension ex2 on int {
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
