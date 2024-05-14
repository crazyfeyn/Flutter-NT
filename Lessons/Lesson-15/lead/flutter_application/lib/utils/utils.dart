import 'dart:async';

import 'package:flutter/material.dart';

List<Map<String, dynamic>> dataQolip = [
  {
    "dataTime": DateTime.parse("2024-01-12"),
    "sped_money": 120,
    "monthly_budget": 100000000,
    "product": <Map<String, dynamic>>[
      {
        "icon": Icon(Icons.alarm),
        "title": "Qovun",
        "date": DateTime.now(),
        "price": 20000.0,
      }
    ]
  },
  {
    "dataTime": DateTime.parse("2024-02-12"),
    "sped_money": 80,
    "monthly_budget": 150000000,
    "product": <Map<String, dynamic>>[
      {
        "icon": Icon(Icons.shopping_cart),
        "title": "Milk",
        "date": DateTime.now(),
        "price": 5000.0,
      }
    ]
  },
  {
    "dataTime": DateTime.parse("2024-03-12"),
    "sped_money": 200,
    "monthly_budget": 80000000,
    "product": <Map<String, dynamic>>[
      {
        "icon": Icon(Icons.restaurant_menu),
        "title": "Pizza",
        "date": DateTime.now(),
        "price": 25000.0,
      }
    ]
  },
  {
    "dataTime": DateTime.parse("2024-04-12"),
    "sped_money": 150,
    "monthly_budget": 120000000,
    "product": <Map<String, dynamic>>[
      {
        "icon": Icon(Icons.train),
        "title": "Train Ticket",
        "date": DateTime.now(),
        "price": 30000.0,
      }
    ]
  },
  {
    "dataTime": DateTime.parse("2024-05-12"),
    "sped_money": 100,
    "monthly_budget": 200000000,
    "product": <Map<String, dynamic>>[
      {
        "icon": Icon(Icons.mobile_screen_share),
        "title": "Phone Charger",
        "date": DateTime.now(),
        "price": 15000.0,
      }
    ]
  },
];

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
