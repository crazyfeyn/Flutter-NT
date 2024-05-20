import 'package:application/functions/assistants.dart';
import 'package:application/screens/home_screen.dart';
import 'package:application/utils/tools/general_tools.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Onboarding1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Onboarding1();
  }
}

class _Onboarding1 extends State<Onboarding1> {
  int listIndex = 0;
  static final List onboardingElements = [
    {
      'image': Image.asset("assets/images/food1.png"),
      'title': 'Explore',
      'subtitle':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae rutrum leo.',
      'buttonText': 'Next',
    },
    {
      'image': Image.asset("assets/images/food2.png"),
      'title': 'Share',
      'subtitle':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae rutrum leo.',
      'buttonText': 'Next',
    },
    {
      'image': Image.asset("assets/images/food3.png"),
      'title': 'Search',
      'subtitle':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae rutrum leo.',
      'buttonText': 'Done',
    }
  ];

  void increaseListIndex() {
    setState(() {
      if (listIndex < 2) {
        listIndex++;
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (ctx) => const HomeScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212832),
      body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Stack(
              children: [
                Positioned(
                    top: -10,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 233,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/half.png"))),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const HomeScreen()));
                                },
                                child: Text(
                                  "Skip",
                                  style: Tools.solidStyle
                                      .copyWith(fontWeight: FontWeight.w600),
                                ))
                          ],
                        ),
                      ),
                    )),
                Positioned(
                    top: listIndex == 0 ? 150 : 77,
                    left: 0,
                    right: 0,
                    child: onboardingElements[listIndex]['image'])
              ],
            ),
          ),
          Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    onboardingElements[listIndex]['title'],
                    style: Tools.boldStyle,
                  ),
                  Container(
                      width: 300,
                      alignment: Alignment.center,
                      child: Text(
                        onboardingElements[listIndex]['subtitle'],
                        style: Tools.solidStyle.copyWith(fontSize: 14),
                        textAlign: TextAlign.center,
                      )),
                  nextButton(
                      listIndex != 2
                          ? onboardingElements[listIndex]['buttonText']
                          : 'Done',
                      increaseListIndex),
                  SizedBox(
                    width: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          CupertinoIcons.circle_fill,
                          color: listIndex == 0
                              ? const Color(0xFF9372F1)
                              : Colors.grey.shade400,
                          size: 17,
                        ),
                        Icon(
                          CupertinoIcons.circle_fill,
                          color: listIndex == 1
                              ? const Color(0xFF9372F1)
                              : Colors.grey.shade400,
                          size: 17,
                        ),
                        Icon(
                          CupertinoIcons.circle_fill,
                          color: listIndex == 2
                              ? const Color(0xFF9372F1)
                              : Colors.grey.shade400,
                          size: 17,
                        )
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
