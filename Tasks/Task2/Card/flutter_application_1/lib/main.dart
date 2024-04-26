import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(Card());
}

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                // decoration:
                //     BoxDecoration(borderRadius: BorderRadius.circular(20)),
                width: 400,
                height: 200,
                padding: const EdgeInsets.all(14),
                color: Colors.red,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "BANK NAME",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          color: Colors.white),
                    ),
                    Text(
                      "CREDIT CARD",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_sharp,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 250,
                        ),
                        Icon(
                          Icons.wifi,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "8982 1283 2134 2314",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Lorem Ipsum",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        SizedBox(width: 170),
                        Text(
                          "01/25",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 100),
                // decoration:
                //     BoxDecoration(borderRadius: BorderRadius.circular(20)),
                width: 400,
                height: 200,
                padding: const EdgeInsets.all(14),
                color: Colors.purple,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "BANK NAME",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 21,
                          color: Colors.white),
                    ),
                    Text(
                      "CREDIT CARD",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_sharp,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 250,
                        ),
                        Icon(
                          Icons.wifi,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "8982 1283 2134 2314",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "Lorem Ipsum",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        SizedBox(width: 170),
                        Text(
                          "01/25",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
