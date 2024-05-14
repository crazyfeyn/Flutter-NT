import 'package:dras_14_amaliyot/controllers/food_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget starSection(int index) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            foods[index]["text1"]!,
            style: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                for (int i = 0; i < 5; i++)
                  const Icon(
                    Icons.star_border,
                    color: Colors.yellow,
                  ),
              ],
            ),
          )
        ],
      ),
      const Text("\$24",
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black))
    ],
  );
}

Widget fireSection(setState, int plusOrMin) {
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
