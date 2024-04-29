import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/utils/cardWeatherinfo.dart';
import 'package:flutter_application_1/utils/topWidget.dart';

void main(List<String> args) {
  runApp(Weather());
}

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.abc))
            ],
          ),
          body: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 50),
                    child: const Row(
                      children: [
                        Text(
                          "Bandung",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Indonezia",
                          style: TextStyle(fontSize: 17),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 19, 130, 221),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    width: 350,
                    padding: const EdgeInsets.all(50),
                    child: Column(
                      children: [
                        const Icon(
                          Icons.cloud,
                          size: 100,
                          color: Colors.white,
                        ),
                        const Text(
                          "Heavy Rain",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "Sunday, 02 Oct",
                          style: TextStyle(color: Colors.grey.shade300),
                        ),
                        const Text(
                          "24°",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      const Padding(padding: EdgeInsets.all(10)),
                      topWidget()
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
