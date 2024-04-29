import 'package:flutter/material.dart';

Widget cardWeatherInfo(int number) {
  List<String> weeks = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];
  List<Widget> children = [];
  for (int i = 0; i < number; i++) {
    var card = Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: i == 0 ? Colors.blue : Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Text("1$i:00"),
          Icon(Icons.cloud, color: i == 0 ? Colors.white : Colors.blue),
          Text(weeks[i])
        ],
      ),
    );
    children.add(card);
    if (i < number - 1) {
      children.add(const SizedBox(width: 3.5));
    }
  }
  return Row(children: children);
}
