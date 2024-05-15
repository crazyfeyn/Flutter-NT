import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Task2State();
  }
}

class _Task2State extends State<Task2> {
  List<bool> isDone = [false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              listIn("task1", 0),
              listIn("task2", 1),
              listIn("task3", 2),
            ],
          ),
        ),
      ),
    );
  }

  Widget listIn(String task, int index) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 380,
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.black))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            task,
            style: TextStyle(
                fontSize: 20,
                decoration: isDone[index] ? TextDecoration.lineThrough : null),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  isDone[index] = !isDone[index];
                });
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
                size: 30,
              ))
        ],
      ),
    );
  }
}
