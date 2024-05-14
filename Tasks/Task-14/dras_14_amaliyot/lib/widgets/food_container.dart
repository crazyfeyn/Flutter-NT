import 'package:dras_14_amaliyot/controllers/food_list.dart';
import 'package:dras_14_amaliyot/pages/food_page.dart';
import 'package:flutter/material.dart';

Widget func(int i, BuildContext context) {
  return Stack(
    clipBehavior: Clip.none,
    children: [
      InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FoodPage(index: i),
            ),
          );
        },
        child: Container(
          height: 200,
          padding: const EdgeInsets.all(7),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.grey.shade200)),
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Text(
                      foods[i]["text1"]!,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 17),
                    ),
                    Text(
                      foods[i]["text2"]!,
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                              width: 150,
                              child: Column(
                                children: [
                                  Divider(
                                    color: Colors.grey.shade600,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        foods[i]["price"]!,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700,
                                            fontSize: 21),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.favorite_border),
                                        iconSize: 34,
                                      )
                                    ],
                                  )
                                ],
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      Positioned(
        top: -70,
        left: 0,
        child: SizedBox(
          width: 160,
          height: 100,
          child: Image.asset(
            foods[i]["image"]!,
            width: double.infinity,
          ),
        ),
      ),
    ],
  );
}
