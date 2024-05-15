import 'package:application/utils/extensions.dart';
import 'package:application/utils/tools.dart';
import 'package:application/widgets/general_widgets.dart';
import 'package:flutter/material.dart';

class Page_first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              text1(),
              20.height(),
              text2(),
              Image.asset(
                "assets/images/img1.png",
                height: 400,
              ),
              15.height(),
              buttonBig("Create Account"),
              20.height(),
              faangLogin(),
            ],
          ),
          RichText(
              text: TextSpan(
                  text: 'You have account?',
                  style: Tools.solidStyle,
                  children: const [
                TextSpan(
                    text: ' Log in',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 16))
              ]))
        ],
      ),
    );
  }
}
