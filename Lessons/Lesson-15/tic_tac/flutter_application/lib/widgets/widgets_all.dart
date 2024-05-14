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

Widget bottomLine() {
  return const SizedBox(
    width: 240,
    child: Divider(
      thickness: 3,
      height: 0,
      color: Colors.white,
    ),
  );
}

Widget topLine() {
  return Container(
    height: 80,
    width: 4,
    decoration: const BoxDecoration(color: Colors.white),
  );
}
