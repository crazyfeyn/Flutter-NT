import 'package:flutter/material.dart';

void main() {
  runApp(Vazifa1());
}

class Vazifa1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<Vazifa1> {
  Color color = Colors.white;
  int? i = null;
  List colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: color,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: DropdownButton(
                    borderRadius: BorderRadius.circular(20),
                    dropdownColor: Colors.white,
                    menuMaxHeight: 200,
                    isDense: true,
                    hint: const Text(
                      "choose a color",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    value: i,
                    items: const [
                      DropdownMenuItem(
                        value: 0,
                        child: Text("Red"),
                      ),
                      DropdownMenuItem(
                        value: 1,
                        child: Text("Blue"),
                      ),
                      DropdownMenuItem(
                        value: 2,
                        child: Text("Green"),
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        i = value;
                        color = colors[i!];
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
