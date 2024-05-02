import 'package:flutter/material.dart';
import 'package:food/screens/screen_1.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                height: 5,
                width: 8,
                color: Colors.grey.shade800,
              ),
              Container(
                height: 5,
                width: 8,
                color: Colors.grey.shade400,
              ),
              Container(
                height: 5,
                width: 8,
                color: Colors.grey.shade400,
              ),
              Container(
                height: 5,
                width: 8,
                color: Colors.grey.shade400,
              )
            ],
          ),
        ),
        body: Screen1(),
      ),
    );
  }
}
