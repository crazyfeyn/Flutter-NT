import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(CupertinoIcons.back)),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Analytics", style: TextStyle(fontWeight: FontWeight.w600))
          ],
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    border: Border.all(color: Colors.grey)),
                child: const Icon(
                  Icons.download,
                  color: Colors.green,
                  size: 30,
                ),
              )),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          //!here
          children: [
            wideRow(),
            const SizedBox(height: 15),
            expanse("Your expanses"),
            const SizedBox(
              height: 15,
            ),
            image(),
            const SizedBox(height: 15),
            gro(),
            SizedBox(height: 25),
            expanse("10 May, Fri"),
            SizedBox(
              height: 15,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [scroll(), scroll(), scroll(), scroll()],
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
              size: 30,
            ),
            label: 'Statistic',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.money,
              size: 30,
            ),
            label: 'Money',
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}

Widget wideRow() {
  List<dynamic> lstIn = [
    const Text(
      "24 h",
      style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 18,
          color: Colors.white,
          backgroundColor: Colors.green),
    ),
    const Text(
      "Week",
      style: TextStyle(
          fontWeight: FontWeight.w700, fontSize: 18, color: Colors.green),
    ),
    const Text(
      "Month",
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 18,
      ),
    ),
    const Text(
      "Year",
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 18,
      ),
    )
  ];
  List<Widget> lst = [];
  for (int i = 0; i < 4; i++) {
    lst.add(Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.black),
            color: i != 1 ? Colors.green : Colors.white),
        child: lstIn[i]));
  }
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: lst,
  );
}

Widget expanse(String text) {
  return Row(
    children: [
      SizedBox(
        width: 15,
      ),
      Text(
        text,
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w700, fontSize: 25),
      )
    ],
  );
}

Widget image() {
  return Container(
      width: double.infinity,
      child: Image.asset(
        "assets/images/pic5.png",
        fit: BoxFit.cover,
      ));
}

Widget grocery(rang) {
  return Container(
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      color: rang,
    ),
    child: const Row(
      children: [
        Text(
          "grocery",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "\$300",
          style: TextStyle(
              fontWeight: FontWeight.w600, color: Colors.white, fontSize: 14),
        )
      ],
    ),
  );
}

Widget gro() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      grocery(Colors.green),
      grocery(Colors.purple),
      grocery(Colors.black),
    ],
  );
}

Widget scroll() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Image.asset(
            "assets/images/pic2.png",
            width: 90,
          ),
          const Column(
            children: [
              Text(
                "From Ahmad Mughal",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Text("20 Jan 2024 at 10:00 PM")
            ],
          ),
        ],
      ),
      const Text("-\$3,4.00",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17))
    ],
  );
}
