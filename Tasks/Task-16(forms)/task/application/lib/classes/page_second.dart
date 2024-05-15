import 'package:application/utils/extensions.dart';
import 'package:application/utils/tools.dart';
import 'package:application/widgets/general_widgets.dart';
import 'package:flutter/material.dart';

class Page_second extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Page_second();
  }
}

class _Page_second extends State<Page_second> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              text2_1(),
              20.height(),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  icon: const Icon(
                    Icons.email,
                    size: 30,
                  ),
                  hintText: 'name@example.com',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              15.height(),
              TextField(
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: _obscureText
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.hide_source)),
                  icon: const Icon(
                    Icons.key,
                    size: 30,
                  ),
                  hintText: '****************',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                obscureText: _obscureText,
              ),
              10.height(),
              dontHaveAcc(),
              20.height(),
              dont(),
            ],
          ),
          Column(
            children: [
              buttonBig("Log in"),
              20.height(),
              faangLogin(),
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
