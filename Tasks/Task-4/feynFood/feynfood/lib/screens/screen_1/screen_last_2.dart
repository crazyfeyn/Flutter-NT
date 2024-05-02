import 'package:feynfood/functions/scroll.dart';
import 'package:feynfood/screens/screen_1/screen_last_1.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenLast2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                child: Scroll(),
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
