import 'package:flutter/material.dart';

class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/back1.png"),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  AppBar(
                    backgroundColor: Colors.transparent,
                    leadingWidth: 95,
                    leading: IconButton(
                        padding: EdgeInsets.all(10),
                        style: IconButton.styleFrom(
                            backgroundColor: Color(0xFFfdf5ed),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)))),
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.orange,
                          size: 45,
                        )),
                  )
                ],
              ))),
    );
  }
}
