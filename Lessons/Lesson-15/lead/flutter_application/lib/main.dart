import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/utils/utils.dart';
import 'package:flutter_application/widgets/appbar.dart';
import 'package:flutter_application/widgets/wigets.dart';
import 'package:flutter_iconpicker_plus/IconPicker/Packs/Material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPage();
  }
}

class _MainPage extends State<MainPage> {
  DateTime dateTime = DateTime.now();
  int index = 0;
  var sana;
  DateTime? showDate;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: shoxruxApp(),
        body: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 40),
            padding: const EdgeInsets.all(20),
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  TopLogic(),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
