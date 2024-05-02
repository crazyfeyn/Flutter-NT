import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.all(15), child: mainContainer());
  }
}

first() {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF68AFEF), width: 4),
        borderRadius: const BorderRadius.all(Radius.circular(15))),
    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //!first
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.circle,
              color: Color(0xFFA846BF),
              size: 40,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bolajon",
                  style: TextStyle(
                    color: Color(0xFFA846BF),
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "Toshkentdan",
                  style: TextStyle(
                    color: Color(0xFFA846BF),
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                )
              ],
            )
          ],
        ),
        //!second
        Container(
          height: 50,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "08:00",
                style: TextStyle(
                  color: Color(0xFFA846BF),
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}

second() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        border: Border.all(width: 4, color: Colors.green)),
    child: Column(
      children: [
        Icon(
          Icons.circle,
          color: Color(0xFFA846BF),
          size: 100,
        ),
        Text(
          "Followers: 1mln",
          style: TextStyle(
            color: Color(0xFFA846BF),
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        )
      ],
    ),
  );
}

lastFirst(rang) {
  return Container(
    padding: EdgeInsets.only(top: 10, bottom: 10),
    decoration: BoxDecoration(
        border: Border.all(width: 4, color: rang),
        borderRadius: BorderRadius.all(Radius.circular(15))),
    child: Column(
      children: [
        Icon(
          Icons.circle,
          color: Color(0xFFA846BF),
          size: 65,
        ),
        Icon(
          Icons.circle,
          color: Color(0xFFA846BF),
          size: 65,
        ),
        Icon(
          Icons.circle,
          color: Color(0xFFA846BF),
          size: 65,
        ),
      ],
    ),
  );
}

lastFinal() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        lastFirst(Colors.yellow),
        lastFirst(Colors.grey.shade600),
        lastFirst(Colors.black),
        lastFirst(Colors.purple)
      ],
    ),
  );
}

mainContainer() {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        border: Border.all(color: Colors.black, width: 6)),
    padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
    child: Column(
      children: [
        //!
        first(),
        SizedBox(height: 50),
        second(),
        SizedBox(height: 60),
        lastFinal()
      ],
    ),
  );
}
