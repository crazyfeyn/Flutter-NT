
import 'package:feynfood/screens/screen_1/screen_last_1.dart';
import 'package:feynfood/screens/screen_1/screen_last_2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenLast3 extends StatelessWidget {
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
          child: Column(
            children: [
              //!here
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ScreenLast1()));
                        },
                        icon: Icon(
                          FontAwesomeIcons.arrowLeft,
                          color: Colors.orange,
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              second(),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: scroll(),
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
            BottomNavigationBarItem(
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
                icon: const Icon(
                  Icons.message,
                  color: Colors.green,
                ),
              ),
              label: 'Messages',
            ),
          ],
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}

second() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        "Chat",
        style: TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700),
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
    );
    lst.add(const SizedBox(
      height: 10,
    ));
  }
  return Column(
    children: [Column(children: lst)],
  );
}
