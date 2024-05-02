import 'package:feynfood/screens/screen_1/screen_last_2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenLast1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/back1.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      firstRow(),
                      const SizedBox(
                        height: 40,
                      ),
                      secondRow(),
                      const SizedBox(
                        height: 40,
                      ),
                      third(),
                      const SizedBox(
                        height: 30,
                      ),
                      fourth(),
                      Container(
                        height: 345,
                        width: double.infinity,
                        child: Expanded(
                            child: SingleChildScrollView(
                          child: scroll(),
                        )),
                      )
                    ],
                  )),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Basket',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ScreenLast2(),
                    ),
                  );
                },
                icon: const Icon(Icons.message),
              ),
              label: 'Messages',
            ),
          ],
          selectedItemColor: Colors.green,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}

//!-----------
Widget firstRow() {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    //!first
    const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Find your",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w800, color: Colors.black),
        ),
        Text("Favourite food",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w800, color: Colors.black))
      ],
    ),
    //!second
    IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.notification_important,
          size: 30,
          color: Colors.green,
        ))
  ]);
}

Widget secondRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      //!first
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.orange.shade100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.orange.shade900,
                )),
            Text(
              "What do you want to order?",
              style: TextStyle(color: Colors.orange.shade500, fontSize: 15),
            )
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.orange.shade100),
        child: TextButton(
            onPressed: () {},
            child: Image.asset(
              "assets/images/filter.png",
              width: 40,
            )),
      )
    ],
  );
}

Widget third() {
  return TextButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Color.fromARGB(162, 230, 158, 113),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "soup",
                  style: TextStyle(
                      color: Color(0xFFda6318),
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  FontAwesomeIcons.x,
                  color: Color(0xFFda6318),
                  size: 17,
                )
              ],
            ),
          )
        ],
      ));
}

Widget fourth() {
  return Row(
    children: [
      Container(
        padding: const EdgeInsets.all(15),
        child: const Text("Popular menu",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
                color: Colors.black)),
      )
    ],
  );
}

Widget scroll() {
  List<Widget> lst = [];
  for (int i = 0; i < 10; i++) {
    lst.add(
      Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
            color: const Color(0xFFffffff),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(color: Colors.grey)),
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/left.png",
                  width: 40,
                  height: 60,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Herbal Pancake",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Warung Herball",
                      style: TextStyle(),
                    ),
                  ],
                ),
              ],
            ),
            const Text(
              "\$7",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFFfead1f)),
            )
          ],
        ),
      ),
    );
    lst.add(const SizedBox(
      height: 10,
    ));
  }
  return Column(
    children: [Column(children: lst)],
  );
}
