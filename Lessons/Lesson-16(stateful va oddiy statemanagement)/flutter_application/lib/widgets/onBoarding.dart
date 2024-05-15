import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  final String topImage;
  final String titleText;
  final String bottomText;
  final int index;
  final Function onTap;
  const OnBoarding(
      {required this.topImage,
      required this.titleText,
      required this.bottomText,
      required this.index,
      required this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            topImage,
            width: 200,
          ),
          SizedBox(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Wrap(
                  children: [Text(titleText)],
                ),
                Wrap(
                  children: [Text(bottomText)],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    onTap();
                  },
                  child: Container(
                    width: index == 0 ? 55 : 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onTap();
                  },
                  child: Container(
                    width: index == 1 ? 55 : 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    onTap();
                  },
                  child: Container(
                    width: index == 2 ? 55 : 20,
                    height: 20,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(50)),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
