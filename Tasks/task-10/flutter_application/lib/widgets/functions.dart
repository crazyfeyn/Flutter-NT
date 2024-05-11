import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar phoneAppbar() {
  return AppBar(
    leadingWidth: 75,
    leading: const Icon(
      Icons.list_outlined,
      size: 35,
      color: Colors.grey,
    ),
    actions: [
      SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/man.png"),
        ),
      ),
      const SizedBox(width: 8),
    ],
  );
}

AppBar deskAppbar() {
  return AppBar(
    leadingWidth: 180,
    leading: const Padding(
      padding: EdgeInsets.only(left: 35, top: 10),
      child: Text(
        "MORENT",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35,
            color: Color(0xff3563E9)),
      ),
    ),
    title: Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
          height: 60, width: 400, child: Image.asset("assets/search.png")),
    ),
    actions: [
      Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle, border: Border.all(color: Colors.grey)),
        child: const Padding(
          padding: EdgeInsets.all(5.0),
          child: Icon(
            CupertinoIcons.heart_fill,
            size: 25,
            color: Colors.grey,
          ),
        ),
      ),
      const SizedBox(width: 10),
      Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle, border: Border.all(color: Colors.grey)),
        child: const Padding(
          padding: EdgeInsets.all(5.0),
          child: Icon(
            Icons.notifications,
            size: 25,
            color: Colors.grey,
          ),
        ),
      ),
      const SizedBox(width: 10),
      Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle, border: Border.all(color: Colors.grey)),
        child: const Padding(
          padding: EdgeInsets.all(5.0),
          child: Icon(
            Icons.settings,
            size: 25,
            color: Colors.grey,
          ),
        ),
      ),
      const SizedBox(width: 10),
      SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/man.png"),
        ),
      ),
    ],
  );
}

Widget phoneAppbarCon(double width) {
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            "MORENT",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color(0xff3563E9)),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 80,
                width: width * 0.7,
                child: Image.asset("assets/search.png")),
            SizedBox(
                height: 50,
                width: width * 0.2,
                child: Image.asset("assets/more.png")),
          ],
        )
      ],
    ),
  );
}

Widget phone(double width) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        width: width * 0.9,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Image.asset("assets/car.png"),
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: width * 0.28,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Image.asset("assets/car2.png"),
            ),
            Container(
              width: width * 0.28,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Image.asset("assets/car2.png"),
            ),
            Container(
              width: width * 0.28,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Image.asset("assets/car2.png"),
            ),
          ],
        ),
      ),
      Container(
        width: width * 0.9,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Image.asset("assets/star.png"),
      ),
      const SizedBox(height: 25),
      Container(
        width: width * 0.9,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Image.asset("assets/humans.png"),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Recent Car",
              style: TextStyle(
                  color: Color(0xff90A3BF),
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "View All",
              style: TextStyle(
                  color: Color(0xff3563E9),
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (var i = 0; i < 3; i++)
              Row(
                children: [
                  SizedBox(
                    width: width * 0.6,
                    child: Image.asset("assets/car3.png"),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
          ],
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Recomended Car",
              style: TextStyle(
                  color: Color(0xff90A3BF),
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "View All",
              style: TextStyle(
                  color: Color(0xff3563E9),
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (var i = 0; i < 3; i++)
              Row(
                children: [
                  SizedBox(
                    width: width * 0.6,
                    child: Image.asset("assets/car3.png"),
                  ),
                  const SizedBox(width: 20),
                ],
              ),
          ],
        ),
      ),
      const SizedBox(height: 40),
      const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "MORENT",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xff3563E9)),
                ),
                Text(
                  "Our vision is to provide convenience",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color(0xff90A3BF)),
                ),
                Text(
                  "and help increase your sales business.",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Color(0xff90A3BF)),
                ),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: width * 0.3,
              child: Image.asset("assets/text1.png"),
            ),
            SizedBox(
              width: width * 0.3,
              child: Image.asset("assets/text2.png"),
            ),
          ],
        ),
      ),
      const SizedBox(height: 20),
      Padding(
        padding: const EdgeInsets.only(left: 20, right: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: width * 0.3,
              child: Image.asset("assets/text3.png"),
            ),
          ],
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 20, right: 40, top: 20, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Privacy & Policy",
              style: TextStyle(
                  color: Color(0xff1A202C),
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "Terms & Condition",
              style: TextStyle(
                  color: Color(0xff1A202C),
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(left: 20, right: 40, top: 5, bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "©2022 MORENT. All rights reserved",
              style: TextStyle(
                  color: Color(0xff1A202C),
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget desk(double width) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: width * 0.45,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset("assets/car.png"),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: width * 0.145,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                            child: Image.asset("assets/car2.png"),
                          ),
                          Container(
                            width: width * 0.145,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                            child: Image.asset("assets/car2.png"),
                          ),
                          Container(
                            width: width * 0.145,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)),
                            child: Image.asset("assets/car2.png"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: width * 0.45,
                  child: Image.asset("assets/star2.png"),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Container(
              width: width * 0.9,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Image.asset("assets/humans2.png"),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Car",
                    style: TextStyle(
                        color: Color(0xff90A3BF),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        color: Color(0xff3563E9),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (var i = 0; i < 4; i++)
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.23,
                        child: Image.asset("assets/car3.png"),
                      ),
                    ],
                  ),
              ],
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recomended Car",
                    style: TextStyle(
                        color: Color(0xff90A3BF),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        color: Color(0xff3563E9),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                for (var i = 0; i < 4; i++)
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.23,
                        child: Image.asset("assets/car3.png"),
                      ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
      SizedBox(
        width: width,
        child: Image.asset("assets/bottom.png"),
      ),
    ],
  );
}