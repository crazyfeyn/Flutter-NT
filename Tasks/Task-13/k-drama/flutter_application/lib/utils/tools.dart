import 'package:flutter/material.dart';

class Tools {
  static const TextStyle chosenStyle = TextStyle(
      color: Color(0xFF830FE2), fontWeight: FontWeight.w700, fontSize: 20);

  static TextStyle unchosenStyle = TextStyle(
      color: Colors.grey.shade400, fontWeight: FontWeight.w700, fontSize: 20);

  static const BoxDecoration unchosenBorderStyle = BoxDecoration(
      border: Border(bottom: BorderSide(color: Colors.white, width: 3)));

  static const BoxDecoration chosenBorderStyle = BoxDecoration(
      border: Border(bottom: BorderSide(color: Color(0xFF830FE2), width: 7)));

  static bool trailerSectionBool1 = true;
  static bool trailerSectionBool2 = false;
  static bool trailerSectionBool3 = false;
}
