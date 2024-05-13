import 'package:flutter/material.dart';
import 'package:flutter_application/pages/page_last.dart';
import 'package:flutter_application/utils/extensions/extensions.dart';

Widget secondSec() {
  return Container(
    height: 190,
    width: double.infinity,
    decoration: BoxDecoration(
        color: const Color(0xFFE17855),
        borderRadius: BorderRadius.circular(40)),
    padding: const EdgeInsets.all(40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Autumn day",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w800,
                fontSize: 25,
              ),
            ),
            Text(
              "Hello Jack",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
          ],
        ),
        Container(
          width: 50,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Image.asset(
            "assets/images/img2.jpeg",
            fit: BoxFit.cover,
          ),
        )
      ],
    ),
  );
}

Widget smallPic(BuildContext context) {
  return InkWell(
    onTap: () {
      print("salom");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Page_last()));
    },
    child: Container(
      width: 50,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(7)),
      child: Image.asset(
        "assets/images/img3.png",
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget rich() {
  return RichText(
      text: const TextSpan(children: [
    TextSpan(
        style: TextStyle(
            color: Colors.black, fontSize: 27, fontWeight: FontWeight.w700),
        text: "Day "),
    TextSpan(
        style: TextStyle(
            color: Colors.black, fontSize: 27, fontWeight: FontWeight.w300),
        text: "Schedule"),
  ]));
}

Widget scrollWedding(BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Page_last()));
    },
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 120,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
          child: Image.asset("assets/images/img1.jpg"),
        ),
        15.height(),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Wedding",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w800),
            ),
            Text(
              "3:50 tree",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            )
          ],
        )
      ],
    ),
  );
}

Widget secondOne(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(10),
    height: 150,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 120,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
          child: Image.asset("assets/images/img2.jpeg"),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Jack",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w800),
            ),
            const Text(
              "Party organiser",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w300),
            ),
            6.height(),
            TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFE17855),
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20)),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Read more",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ))
          ],
        )
      ],
    ),
  );
}

Widget rich2() {
  return RichText(
      text: const TextSpan(children: [
    TextSpan(
        style: TextStyle(
            color: Colors.black, fontSize: 27, fontWeight: FontWeight.w700),
        text: "October "),
    TextSpan(
        style: TextStyle(
            color: Colors.black, fontSize: 27, fontWeight: FontWeight.w300),
        text: "Holidays"),
  ]));
}

Widget barg(BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        height: 100,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
        child: Image.asset("assets/images/img4.png"),
      ),
      Column(
        children: [
          Text(
            "Thanks giving",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
          ),
          6.height(),
          Text(
            "\$ 174.99",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.w800),
          ),
        ],
      ),
      TextButton(
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xFFD7E2C8),
              padding: const EdgeInsets.symmetric(horizontal: 19)),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            "View",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ))
    ],
  );
}

Widget barg2(BuildContext context) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        height: 100,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
        child: Image.asset("assets/images/img4.png"),
      ),
      Column(
        children: [
          Text(
            "Thanks giving",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w300),
          ),
          6.height(),
          Text(
            "\$ 174.99",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.w800),
          ),
        ],
      ),
      TextButton(
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xFFE17855),
              padding: const EdgeInsets.symmetric(horizontal: 19)),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            "View",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ))
    ],
  );
}

Widget rich3() {
  return RichText(
      text: const TextSpan(children: [
    TextSpan(
        style: TextStyle(
            color: Colors.black, fontSize: 27, fontWeight: FontWeight.w700),
        text: "Party "),
    TextSpan(
        style: TextStyle(
            color: Colors.black, fontSize: 27, fontWeight: FontWeight.w300),
        text: "planning"),
  ]));
}


Widget scrollDog(BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.pop(context);
    },
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 120,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
          child: Image.asset("assets/images/img1.jpg"),
        ),
        15.height(),
         Text(
           "Birthdays",
           style: TextStyle(
               color: Colors.black,
               fontSize: 20,
               fontWeight: FontWeight.w800),
         ),
        
      ],
    ),
  );
}