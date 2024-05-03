import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/utils/functions.dart';
import 'package:flutter_application/utils/styles.dart';

class Screen0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/back1.png"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(33),
                          topRight: Radius.circular(33))),
                  child: Column(
                    children: [
                      space(10),
                      pageSkipepr(),
                      space(80),
                      welcomingText(),
                      space(30),
                      welcomingText2(),
                      space(60),
                      Container(
                          width: 310,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Color(0xFF6f64ea),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/first');
                              },
                              child: Text(
                                "Get started",
                                style: AppTextStyles.bigWeek
                                    .copyWith(color: Colors.white),
                              )))
                    ],
                  )),
            ],
          )),
    );
  }
}
