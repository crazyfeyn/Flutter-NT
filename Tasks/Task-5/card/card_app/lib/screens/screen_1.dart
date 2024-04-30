import 'package:card_app/screens/screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: Image.asset(
            "assets/images/pic1.png",
            fit: BoxFit.cover,
          ),
        ),
        title: const Column(
          children: [
            Text(
              "Shahzaib",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            Text(
              "Good morning",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        actions: [
          IconButton(
              padding: const EdgeInsets.all(10),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen2()));
              },
              icon: const Icon(
                Icons.notification_add_rounded,
                size: 35,
              )),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      //!
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ), //!circle
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 250,
                  width: 250,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.green.withOpacity(0.5),
                      offset: Offset(4.0, 4.0),
                      blurRadius: 50,
                      spreadRadius: 20,
                    ),
                  ], shape: BoxShape.circle, color: Colors.white),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Your Total Balance",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "\$2,123,00",
                        style: TextStyle(
                            color: Color(0xFF4A9F78),
                            fontWeight: FontWeight.w600,
                            fontSize: 30),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hide",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(CupertinoIcons.eye_slash)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [btns(), btns(), btns()],
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              children: [
                Text(
                  "Recent Transaction",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            //!look
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

Widget btns() {
  return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: const Color(0xFF4A9F78),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
      onPressed: () {},
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            CupertinoIcons.location,
            color: Colors.white,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            "Send",
            style: TextStyle(fontSize: 23, color: Colors.white),
          )
        ],
      ));
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
      const Text("+\$3,4.00",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17))
    ],
  );
}
