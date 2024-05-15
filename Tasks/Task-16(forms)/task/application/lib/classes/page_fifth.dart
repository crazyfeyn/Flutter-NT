import 'package:application/classes/page_second.dart';
import 'package:application/utils/extensions.dart';
import 'package:application/utils/tools.dart';
import 'package:application/widgets/general_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Page_fifth extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Page_fifth();
  }
}

class _Page_fifth extends State<Page_fifth> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscureText1 = true;
  bool _obscureText2 = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.back),
                color: Colors.black,
                iconSize: 30,
              ),
              textGeneralBold("check your phone",
                  "Check your message to confirm to send a message to you"),
              20.height(),
              codes(),
              20.height(),
              cruText("Helper", " text"),
            ],
          ),
          Column(
            children: [
              InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                            title: Column(
                          children: [
                            40.height(),
                            const CircleAvatar(
                              child: Icon(
                                Icons.check,
                                size: 40,
                              ),
                            ),
                            20.height(),
                            textGeneralBold("Your  activated",
                                "Congratilation you are part of our team"),
                            50.height(),
                            InkWell(
                              onTap: () {},
                              child: Container(
                                width: 350,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 100),
                                decoration: BoxDecoration(
                                    color: const Color(0xFF4155FA),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Text(
                                  "Ok",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),
                                ),
                              ),
                            )
                          ],
                        ));
                      });
                },
                child: Container(
                  width: 350,
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                  decoration: BoxDecoration(
                      color: const Color(0xFF4155FA),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Continuie",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 18),
                  ),
                ),
              ),
              20.height(),
              Text(
                "By continuing, you agree o Looas's",
                style: Tools.solidStyle,
              ),
              const Text("term of Use & PrivacyPolicy",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 16)),
            ],
          )
        ],
      ),
    );
  }
}
