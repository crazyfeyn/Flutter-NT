import 'dart:ui';

import 'package:dras_14_amaliyot/controllers/food_list.dart';
import 'package:dras_14_amaliyot/widgets/general.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FoodPage extends StatefulWidget {
  int index = 0;
  FoodPage({required this.index});

  @override
  State<StatefulWidget> createState() {
    return _FoodPage(index: index);
  }
}

class _FoodPage extends State<FoodPage> {
  int index = 0;
  int plusOrMin = 0;
  _FoodPage({required this.index});
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
              size: 30,
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
                size: 30,
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
              height: 250,
              width: 350,
              decoration: const BoxDecoration(shape: BoxShape.circle),
              child: Image.asset(
                foods[index]["image"]!,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: [
                starSection(index),
                SizedBox(
                  height: 20,
                ),
                fireSection()
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget fireSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 210,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/images/fire.png",
                width: 30,
              ),
              Text(
                "5 categories",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 12),
              ),
              Icon(
                Icons.delivery_dining,
                color: Colors.red,
                size: 30,
              ),
              Text(
                "20:25",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),

        //?click
        Container(
          decoration: BoxDecoration(
              color: Colors.yellow, borderRadius: BorderRadius.circular(50)),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (plusOrMin > 0) plusOrMin--;
                    });
                  },
                  icon: Icon(
                    Icons.remove,
                  )),
              Text(
                "$plusOrMin",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 23),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      plusOrMin++;
                    });
                  },
                  icon: Icon(Icons.add)),
            ],
          ),
        )
      ],
    );
  }
}
