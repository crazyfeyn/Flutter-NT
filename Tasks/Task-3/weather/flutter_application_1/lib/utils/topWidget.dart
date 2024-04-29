import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/cardWeatherinfo.dart';

Widget topWidget() {
  return Column(
    children: [
      Row(
        children: [
          Container(
              width: 175,
              height: 80,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 19, 130, 221),
                border: Border.all(color: Colors.white),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    Icons.waves,
                    color: Colors.white,
                  ),
                  Column(
                    children: [
                      Text(
                        "Wind",
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 17),
                      ),
                      const Text(
                        "19.2 km/h",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              )),
          Container(
              width: 178,
              height: 80,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 19, 130, 221),
                border: Border.all(color: Colors.white),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    Icons.wb_sunny,
                    color: Colors.white,
                  ),
                  Column(
                    children: [
                      Text(
                        "Feels Like",
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 17),
                      ),
                      const Text(
                        "25°",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
      Row(
        children: [
          Container(
              width: 175,
              height: 80,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 19, 130, 221),
                  border: Border.all(color: Colors.white),
                  borderRadius:
                      const BorderRadius.only(bottomLeft: Radius.circular(50))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    Icons.waves,
                    color: Colors.white,
                  ),
                  Column(
                    children: [
                      Text(
                        "Wind",
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 17),
                      ),
                      const Text(
                        "19.2 km/h",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              )),
          Container(
              width: 178,
              height: 80,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 19, 130, 221),
                  border: Border.all(color: Colors.white),
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(50))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    Icons.insert_chart,
                    color: Colors.white,
                  ),
                  Column(
                    children: [
                      Text(
                        "Pressure",
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 17),
                      ),
                      const Text(
                        "1014 mbar",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
      Row(
        children: [
          const Text(
            "Today",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const Padding(padding: EdgeInsets.only(left: 50, right: 50, top: 70)),
          Row(
            children: [
              Text("Next 7 days",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700)),
              const Icon(Icons.arrow_right_alt_rounded)
            ],
          )
        ],
      ),
      Row(
        children: [
          cardWeatherInfo(6),
        ],
      )
    ],
  );
}
