import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            margin: const EdgeInsets.only(top: 50),
            height: 500,
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.yellow),
            child: Center(
              child: Stack(
                children: [
                  Positioned(
                      left: 0,
                      bottom: 0,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("button1"))),
                  Positioned(
                      right: 0,
                      bottom: 0,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("button2")))
                ],
              ),
            )),
      ),
    );
  }
}
