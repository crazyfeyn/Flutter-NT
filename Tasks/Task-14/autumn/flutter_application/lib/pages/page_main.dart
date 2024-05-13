import 'package:flutter/material.dart';
import 'package:flutter_application/utils/extensions/extensions.dart';
import 'package:flutter_application/utils/widgets/widgets_general.dart';

class PageMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: 350,
            width: double.infinity,
            child: Image.asset(
              "assets/images/img1.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(top: 320, left: 0, right: 0, child: secondSec()),
          Positioned(
              top: 460,
              child: Container(
                width: 430,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        smallPic(context),
                        smallPic(context),
                        smallPic(context),
                        smallPic(context),
                      ],
                    ),
                    40.height(),
                    rich(),
                    30.height(),
                    SizedBox(
                        width: double.infinity,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              scrollWedding(context),
                              15.width(),
                              scrollWedding(context),
                              15.width(),
                              scrollWedding(context),
                              15.width(),
                              scrollWedding(context),
                              15.width(),
                            ],
                          ),
                        ))
                  ],
                ),
              ))
        ],
      ),
    ));
  }
}
