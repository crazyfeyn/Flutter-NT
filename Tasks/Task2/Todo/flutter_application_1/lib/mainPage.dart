import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
              padding: const EdgeInsets.all(50),
              alignment: Alignment.center,
              child: Column(
                children: [
                  const SizedBox(
                    height: 130,
                  ),
                  const Icon(
                    Icons.check_circle,
                    size: 60,
                    color: Colors.blue,
                  ),
                  const Text(
                    "Welcome to",
                    style: TextStyle(fontSize: 30, color: Colors.black87),
                  ),
                  const Text(
                    "My Todo",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "My todo helps you stay organized and",
                    style: TextStyle(color: Colors.black54),
                  ),
                  const Text("perform your tasks much faster",
                      style: TextStyle(color: Colors.black54)),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13)),
                      color: Color.fromARGB(255, 186, 205, 221),
                    ),
                    padding: const EdgeInsets.all(30),
                    child: const Text("Try home"),
                    width: 150,
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "No Thanks",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ));
  }
}
