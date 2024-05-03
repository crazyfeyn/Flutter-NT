import 'package:feynfood/screens/screen_1/screen_last_1.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenLast4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/back1.png"),
                  fit: BoxFit.cover)),
          child: Column(children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.orange.shade50),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        FontAwesomeIcons.arrowLeft,
                        color: Colors.orange,
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            contact(),
            message(),
            SizedBox(
              height: 350,
            ),
            last()
            //!=====
          ]),
        ),
      ),
    );
  }
}

contact() {
  return Container(
    width: double.infinity,
    height: 70,
    decoration: BoxDecoration(
      color: const Color(0xFFffffff),
      borderRadius: const BorderRadius.all(Radius.circular(15)),
    ),
    padding: const EdgeInsets.all(7),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              "assets/images/pro.png",
              width: 70,
              height: 70,
            ),
            const SizedBox(
              width: 10,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "John",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: Color(0xFF1fc57a),
                      size: 15,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "online",
                      style: TextStyle(),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.phone,
              color: Colors.green,
            ))
      ],
    ),
  );
}

//!first
first() {
  return Row(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          color: Colors.grey.shade300,
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Text(
              "just to order",
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
      )
    ],
  );
}

second() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          color: Color(0xFF1fc57a),
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Text(
              "okay for what level of spiceness?",
              style: TextStyle(fontSize: 16, color: Colors.white),
            )
          ],
        ),
      )
    ],
  );
}

message() {
  return Column(
    children: [
      //! here
      SizedBox(
        height: 40,
      ),
      first(),
      SizedBox(
        height: 15,
      ),
      second(),
      SizedBox(
        height: 15,
      ),
      first(),
      SizedBox(
        height: 15,
      ),
      second()
    ],
  );
}

last() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
    decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Okay I'm waiting  👍",
          style: TextStyle(fontSize: 19),
        ),
        Icon(
          Icons.send,
          color: Colors.green,
          size: 28,
        )
      ],
    ),
  );
}
