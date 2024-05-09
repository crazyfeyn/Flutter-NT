import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

List<String> carLst = [
  "BMW",
  "Volga",
  "Audi",
  "Ferrari",
  "Tesla",
  "Ko'k jiguli"
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Expanded(
              child: Wrap(
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "Hello",
                style: TextStyle(color: Colors.black, fontSize: 20)),
            TextSpan(
                text: "  World",
                style: TextStyle(color: Colors.red, fontSize: 20))
          ]))
        ],
      ))),
    );
  }
}
