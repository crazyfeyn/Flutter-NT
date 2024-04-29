import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const String textLorem =
    "All informations about me. Currently I'm a student, Something again and again. Never and never give up!";
List iconLst = [
  FontAwesomeIcons.dropbox,
  FontAwesomeIcons.book,
  FontAwesomeIcons.database,
  FontAwesomeIcons.music
];

Widget experienceFunc(String major, iconca) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                iconca,
                color: const Color(0xFF5859E5),
                size: 21,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "Business Name",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(right: 6),
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Color(0xFFEBEBFA),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: const Text(
              "2020-2023",
              style: TextStyle(
                  color: Color(0xFF8688EC),
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
      //!separate margined container
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  FontAwesomeIcons.suitcase,
                  color: Colors.brown,
                  size: 19,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  major,
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w500),
                )
              ],
            ),
            //!lorem section
            const SizedBox(
              height: 6,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.check_circle,
                  color: Color(0xFF8688EC),
                ),
                SizedBox(
                  width: 283,
                  child: Column(
                    children: [Text(textLorem)],
                  ),
                )
              ],
            )
          ],
        ),
      ),
      const SizedBox(
        height: 30,
      ),
    ],
  );
}

expIterateLoop(List<String> lst) {
  List<Widget> gatheredWidgets = [];
  for (int i = 0; i < lst.length; i++) {
    gatheredWidgets.add(experienceFunc(lst[i], iconLst[i]));
  }

  return Column(
    children: gatheredWidgets,
  );
}
