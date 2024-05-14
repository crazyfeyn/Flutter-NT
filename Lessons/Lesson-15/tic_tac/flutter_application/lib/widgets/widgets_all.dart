import 'package:flutter/material.dart';

Widget line() {
  return const SizedBox(
    width: double.infinity,
    child: Divider(
      color: Colors.grey,
    ),
  );
}

Widget score(int playerX, int playerO) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "$playerX : $playerO",
        style: const TextStyle(
            fontSize: 50, fontWeight: FontWeight.w700, color: Colors.white),
      ),
    ],
  );
}
