import 'dart:async';
import 'package:flutter/material.dart';

class Task3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Task3();
  }
}

class _Task3 extends State<Task3> {
  final _controller = TextEditingController();
  String value = '';
  int timer = 0;
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: 'enter second',
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        value = _controller.text;
                        _controller.clear();
                        flag = true;
                        timer = int.parse(value);
                        startTimerLoop(timer);
                      });
                    },
                    icon: const Icon(
                      Icons.send,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              flag
                  ? Text(
                      "$timer",
                      style: const TextStyle(fontSize: 20),
                    )
                  : const Text(''),
            ],
          ),
        ),
      ),
    );
  }

  void startTimerLoop(int timer) {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        if (timer > 0) {
          timer--;
          this.timer = timer;
          startTimerLoop(timer);
        } else {
          setState(() {
            flag = false;
          });
        }
      });
    });
  }
}
