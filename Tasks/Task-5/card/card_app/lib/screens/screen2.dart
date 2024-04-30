import 'package:card_app/screens/card.dart';
import 'package:card_app/screens/screen_3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
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
            Text("Cards", style: TextStyle(fontWeight: FontWeight.w600))
          ],
        ),
        actions: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(13)),
                  border: Border.all(color: Colors.black)),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Screen3()));
                },
                child: Text(
                  "+ Add",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              )),
          const SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(7),
        child: Column(
          children: [
            const Flexible(
                child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Cards(),
                  Cards(),
                  Cards(),
                  Cards()
                ],
              ),
            )),

            //!
            const SizedBox(
              height: 15,
            ),
            Column(
              children: [
                freeze(),
                const SizedBox(
                  height: 15,
                ),
                freeze2(),
                const SizedBox(
                  height: 15,
                ),
                last()
                //!
              ],
            )
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

Widget freeze() {
  return Container(
    padding: const EdgeInsets.all(15),
    decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(7))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/pic3.png",
              width: 35,
            ),
            const SizedBox(
              width: 12,
            ),
            const Text(
              "Freeze",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 22),
            )
          ],
        ),
        const Icon(
          Icons.toggle_on,
          color: Colors.white,
          size: 45,
        )
      ],
    ),
  );
}

Widget freeze2() {
  return Container(
    padding: const EdgeInsets.all(15),
    decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(Radius.circular(7))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/images/pic4.png",
              width: 35,
            ),
            const SizedBox(
              width: 12,
            ),
            const Text(
              "Deactive",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 22),
            )
          ],
        ),
        const Icon(
          Icons.toggle_off,
          color: Colors.green,
          size: 45,
        )
      ],
    ),
  );
}

Widget last() {
  return Container(
    height: 200,
    padding: const EdgeInsets.only(left: 16, right: 16),
    decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 52, 130, 90)),
        borderRadius: BorderRadius.circular(20)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Monthly budget",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "May 2023 current",
                  style: TextStyle(color: Colors.grey.shade700),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "\$1456",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$560 left",
                  style: TextStyle(color: Colors.grey.shade700),
                )
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Previous Month",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "April 2023",
                  style: TextStyle(color: Colors.grey.shade700),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "\$1420",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$10 left",
                  style: TextStyle(color: Colors.grey.shade700),
                )
              ],
            ),
          ],
        )
      ],
    ),
  );
}
