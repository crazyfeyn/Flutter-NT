import 'package:flutter/material.dart';

class ScreenMain extends StatelessWidget {
  List infoFoods = [
    {
      "image": "assets/images/food.png",
      "text1": "Sushi Platter",
      "text2": "Assorted sushi rolls",
      "price": "\$30"
    },
    {
      "image": "assets/images/food2.png",
      "text1": "Margherita Pizza",
      "text2": "Classic Italian pizza",
      "price": "\$15"
    },
    {
      "image": "assets/images/food3.png",
      "text1": "Pad Thai",
      "text2": "Thai stir-fried noodles",
      "price": "\$12"
    },
    {
      "image": "assets/images/food4.png",
      "text1": "Grilled Salmon",
      "text2": "Fresh salmon fillet",
      "price": "\$22"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          height: 700,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  children: [
                    for (int i = 0; i < 4; i++) func(i),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget func(int i) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: Colors.grey.shade200)),
        child: Column(
          children: [
            SizedBox(
              width: 160,
              height: 200,
              child: Image.asset(
                infoFoods[i]["image"],
                width: double.infinity,
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    infoFoods[i]["text1"],
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                  Text(
                    infoFoods[i]["text2"],
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
                                      infoFoods[i]["price"],
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
    );
  }
}
