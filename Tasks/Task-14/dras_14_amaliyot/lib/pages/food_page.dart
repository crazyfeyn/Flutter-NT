import 'dart:ui';

import 'package:dras_14_amaliyot/controllers/food_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodPage extends StatelessWidget {
  int index = 0;
  FoodPage({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              CupertinoIcons.back,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.heart_fill,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/restaurant.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                color: Colors.blue,
              ),
            ),
            Container(
              height: 150,
              width: 150,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: Image.asset(
                foods[index]["image"]!,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Text(
                  foods[index]["text1"]!,
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const Row(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
