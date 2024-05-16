import 'dart:async';

import 'package:flutter/material.dart';

int index = 0;
List<Map<String, dynamic>> dataQolip = [
  {
    "dataTime": DateTime.parse("2024-02-01"),
    "sped_money": 12000000,
    "product": <Map<String, dynamic>>[
      {
        "title": ["Qovun", "tarvuz", "Nok", "Suv", "Ice tea"],
        "price": 20000.0,
      }
    ]
  },
  {
    "dataTime": DateTime.parse("2024-01-01"),
    "sped_money": 5000000,
    "product": <Map<String, dynamic>>[
      {
        "title": ["Milk", "water", "oil"],
        // "price": 5000.0,
      }
    ]
  },
  {
    "dataTime": DateTime.parse("2024-03-01"),
    "sped_money": 2000000,
    "product": <Map<String, dynamic>>[
      {
        "title": ["Pizza", "Hot dog", "Lavash"],
        // "price": 25000.0,
      }
    ]
  },
];

sortedFunc() {
  dataQolip.sort((a, b) => a["dataTime"].month.compareTo(b["dataTime"].month));
  return dataQolip;
}

monthByNumber(monthNumber) {
  switch (monthNumber) {
    case 1:
      return "January";
    case 2:
      return "February";
    case 3:
      return "March";
    case 4:
      return "April";
    case 5:
      return "May";
    case 6:
      return "June";
    case 7:
      return "July";
    case 8:
      return "August";
    case 9:
      return "September";
    case 10:
      return "October";
    case 11:
      return "November";
    case 12:
      return "December";
    default:
      return "Invalid month";
  }
}
