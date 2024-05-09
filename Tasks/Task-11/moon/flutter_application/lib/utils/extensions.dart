import 'package:flutter/material.dart';

extension ex1 on String {
  largeString() {
    return Text(
      this,
      style: TextStyle(
          fontSize: 24, color: Colors.white, fontWeight: FontWeight.w700),
    );
  }
}

extension ex2 on String {
  littleString() {
    return Text(
      this,
      style: TextStyle(
          fontSize: 12, color: Colors.white, fontWeight: FontWeight.w600),
    );
  }
}


extension ex3 on int{
  width(){
    return SizedBox(width: toDouble());
  }
  height(){
    return SizedBox(height: toDouble());
  }
}