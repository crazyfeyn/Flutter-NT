import 'package:feynfood/screens/screen_1/screen_last_2.dart';
import 'package:feynfood/screens/screen_last_4.dart';
import 'package:flutter/material.dart';

class Scroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> lst = [];
    for (int i = 0; i < 10; i++) {
      lst.add(TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ScreenLast4()));
        },
        child: Container(
          width: double.infinity,
          height: 70,
          decoration: BoxDecoration(
            color: const Color(0xFFffffff),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
          ),
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/images/pro.png",
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "John",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Your order arrived",
                        style: TextStyle(),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "20:00",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ));
      lst.add(const SizedBox(
        height: 10,
      ));
    }
    return Column(
      children: [Column(children: lst)],
    );
  }
}
