import 'package:application/utils/database.dart';
import 'package:application/utils/extensions.dart';
import 'package:application/utils/tools.dart';
import 'package:application/widgets/general_widgets.dart';
import 'package:flutter/material.dart';

class Page_second extends StatefulWidget {
  final togglePageAdd;
  Page_second({required this.togglePageAdd});

  @override
  State<StatefulWidget> createState() {
    return _Page_second();
  }
}

class _Page_second extends State<Page_second> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final PageController _pageController = PageController();
  final formKey = GlobalKey<FormState>();
  bool emailExist = false;
  bool passwordExist = false;

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
              Form(
                  child: Column(
                key: formKey,
                children: [
                  TextFormField(
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
                    validator: (value) {
                      try {
                        setState(() {
                          emailExist = DataBase.userDataBase
                              .any((element) => value == element['email']);
                        });
                      } catch (e) {
                        throw Exception;
                      }
                      return null;
                    },
                  ),
                  15.height(),
                  TextFormField(
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
                    validator: (value) {
                      try {
                        setState(() {
                          passwordExist = DataBase.userDataBase
                              .any((element) => value == element['password']);
                        });
                      } catch (e) {
                        throw Exception;
                      }
                      return null;
                    },
                  ),
                ],
              )),
              10.height(),
              dontHaveAcc(),
              20.height(),
              dont(),
            ],
          ),
          Column(
            children: [
              buttonBig("Log In", widget.togglePageAdd, null, null,
                  (emailExist && passwordExist) ? true : false),
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
