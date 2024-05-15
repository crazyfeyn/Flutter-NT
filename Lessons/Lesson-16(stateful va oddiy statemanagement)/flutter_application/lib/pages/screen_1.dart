import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/onBoarding.dart';

class Screen1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Screen1();
  }
}

class _Screen1 extends State<Screen1> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: PageView(
            controller: pageController,
            children: [
              OnBoarding(
                topImage: "assets/pic1.png",
                titleText: "title text",
                bottomText: "bottom text",
                index: 0,
                onTap: () {
                  pageController.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut);
                },
              ),
              OnBoarding(
                topImage: "assets/pic1.png",
                titleText: "title text",
                bottomText: "bottom text",
                index: 1,
                onTap: () {
                  pageController.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut);
                },
              ),
              OnBoarding(
                topImage: "assets/pic1.png",
                titleText: "title text",
                bottomText: "bottom text",
                index: 2,
                onTap: () {
                  pageController.previousPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.easeInOut);
                },
              )
            ],
          ))
        ],
      ),
    );
  }
}
