// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/string_extension.dart';

void main(List<String> args) {}

class HomeWorkScreen extends StatelessWidget {
  Widget Calendar(int dateDay, List<String> weeks) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                Text(weeks[dateDay],
                    style: TextStyle(
                        color: dateDay == 4 ? Colors.red : Colors.black)),
                Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color:
                            dateDay == 4 ? Colors.blue : Colors.grey.shade400,
                        border: Border.all(),
                        shape: BoxShape.circle),
                    child: Text("${dateDay + 21}",
                        style: TextStyle(
                            color:
                                dateDay == 4 ? Colors.white : Colors.black))),
              ],
            )
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 70,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.back,
                size: 35,
              ),
              style: IconButton.styleFrom(
                  side: BorderSide(color: Colors.grey.shade300)),
            ),
          ),
          title: const Text(
            "Home work",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  CupertinoIcons.ellipsis,
                  size: 40,
                ),
                style: IconButton.styleFrom(
                    side: BorderSide(color: Colors.grey.shade300)),
              ),
            ),
            const SizedBox(
              width: 10,
            )
          ],
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int i = 0; i < 7; i++)
                    Calendar(
                        i, ["Dus", "Ses", "Pay", "Sha", "Jum", "Sha", "Pay"])
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Ingliz tili uyga vazifasi".capitalize(),
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 3, 70, 126),
                        shape: BoxShape.circle),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  const Column(
                    children: [
                      Text(
                        "Basic English Writing",
                        style: TextStyle(
                            color: Color.fromARGB(255, 3, 70, 126),
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Chapter-12",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 3, 70, 126),
                      ),
                      child: Row(
                        children: const [
                          Text(
                            "Submit",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            color: Colors.white,
                          )
                        ],
                      )),
                  Row(
                    children: [Icon(Icons.alarm), Text("40 min")],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
