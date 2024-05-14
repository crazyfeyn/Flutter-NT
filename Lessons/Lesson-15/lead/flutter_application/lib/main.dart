import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/utils/utils.dart';
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
  int index = 4;
  var sana;
  DateTime? showDate;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 40),
            padding: const EdgeInsets.all(20),
            child: Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  OutlinedButton(
                    onPressed: () async {
                      showDate = await showDatePicker(
                        context: context,
                        firstDate: DateTime(2000),
                        lastDate: DateTime(3000),
                      );
                      if (showDate != null) {
                        setState(
                          () {
                            sana = "${showDate!.month}.${showDate!.year}";
                          },
                        );
                      }
                    },
                    child: Text(
                      "${monthByNumber(dataQolip[index]['dataTime'].month)}, ${dataQolip[index]['dataTime'].year}",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              if (index > 0) {
                                index--;
                              }
                            });
                          },
                          icon: const Icon(CupertinoIcons.back)),
                      Text("${dataQolip[index]["sped_money"]}"),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              if (index < 4) index++;
                            });
                          },
                          icon: Icon(CupertinoIcons.forward)),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
