import 'package:application/classes/page_second.dart';
import 'package:application/utils/extensions.dart';
import 'package:application/utils/tools.dart';
import 'package:application/widgets/general_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page_fouth extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Page_fouth();
  }
}

class _Page_fouth extends State<Page_fouth> {
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
                icon: Icon(CupertinoIcons.back),
                color: Colors.black,
                iconSize: 30,
              ),
              textGeneralBold("Country of residence", "Add your phone number"),
              20.height(),
              TextField(
                decoration: InputDecoration(
                  hintText: '0000000',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              15.height(),
              20.height(),
              haveAnAcc(),
            ],
          ),
          Column(
            children: [
              buttonBig("Log in"),
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
