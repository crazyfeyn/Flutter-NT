import 'package:application/utils/extensions.dart';
import 'package:application/utils/tools.dart';
import 'package:application/widgets/general_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Page_third extends StatefulWidget {
  final togglePageAdd;
  final togglePageRemove;
  final toggleSignIn;

  Page_third(
      {required this.togglePageAdd,
      required this.togglePageRemove,
      required this.toggleSignIn});
  @override
  State<StatefulWidget> createState() {
    return _Page_third();
  }
}

class _Page_third extends State<Page_third> {
  String name = '';
  String email = '';
  String password = '';
  String passwordCheck = '';

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscureText1 = true;
  bool _obscureText2 = true;
  final PageController _pageController = PageController();
  final formKey = GlobalKey<FormState>();

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
                onPressed: () {
                  widget.togglePageRemove();
                },
                icon: Icon(CupertinoIcons.back),
                color: Colors.black,
                iconSize: 30,
              ),
              textGeneralBold("Register", "Create your first account"),
              20.height(),
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          icon: const Icon(
                            Icons.person,
                            size: 30,
                          ),
                          hintText: 'Your name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        validator: (value) {
                          try {
                            if (value != null && value.isNotEmpty) {
                              setState(() {
                                name = value;
                              });
                            } else {
                              throw Exception;
                            }
                          } catch (e) {
                            return 'please enter your name!';
                          }
                          return null;
                        },
                      ),
                      15.height(),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          icon: const Icon(
                            Icons.email,
                            size: 30,
                          ),
                          hintText: 'Your email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        validator: (value) {
                          try {
                            if (value != null &&
                                value.isNotEmpty &&
                                value.contains('@')) {
                              setState(() {
                                email = value;
                              });
                            } else {
                              throw Exception;
                            }
                          } catch (e) {
                            return '@ sign must be initialized!';
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
                                  _obscureText1 = !_obscureText1;
                                });
                              },
                              icon: _obscureText1
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.hide_source)),
                          icon: const Icon(
                            Icons.key,
                            size: 30,
                          ),
                          hintText: '********',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        obscureText: _obscureText1,
                        validator: (value) {
                          try {
                            if (value != null &&
                                value.isNotEmpty &&
                                value.length >= 4) {
                              setState(() {
                                password = value;
                              });
                            } else {
                              throw Exception;
                            }
                          } catch (e) {
                            return 'password must include at least 4 characters';
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
                                  _obscureText2 = !_obscureText2;
                                });
                              },
                              icon: _obscureText2
                                  ? const Icon(Icons.visibility)
                                  : const Icon(Icons.hide_source)),
                          icon: const Icon(
                            Icons.key,
                            size: 30,
                          ),
                          hintText: '********',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        obscureText: _obscureText2,
                        validator: (value) {
                          try {
                            if (value != null &&
                                value.isNotEmpty &&
                                value == password) {
                              setState(() {
                                passwordCheck = value;
                              });
                            } else {
                              throw Exception;
                            }
                          } catch (e) {
                            return 'password must be the same as on the top!';
                          }
                          return null;
                        },
                      ),
                    ],
                  )),
              20.height(),
              haveAnAcc(true, widget.toggleSignIn),
            ],
          ),
          Column(
            children: [
              buttonBig("next", widget.togglePageAdd, formKey,
                  [name, email, password]),
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
