import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        drawer: const Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.greenAccent,
          toolbarOpacity: 0.1,
          toolbarHeight: 70,
          // leading: IconButton(
          //   onPressed: () {},
          //   icon: const Icon(Icons.add_a_photo_outlined),
          //   color: Colors.red,
          //   iconSize: 42,
          // ),

          title: const Text(
            "Hello",
            style: TextStyle(color: Colors.red, fontSize: 23),
          ),
          actions: const [
            Icon(Icons.sms_failed),
            Icon(Icons.abc),
            Icon(Icons.camera)
          ],
          centerTitle: true,
        ),
        body: Container(
          child: Column(),
        ),
      ),
    );
  }
}
