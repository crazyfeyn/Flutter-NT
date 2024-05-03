import 'package:feynfood/utils/AllFunctions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/back1.png"),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                const SizedBox(height: 40),
                Image.asset(
                  "assets/images/center.png",
                  width: 220,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Feyn's food",
                  style: TextStyle(
                      color: Color(0xFF2ecf7f),
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
                const Text(
                  "deliver favourite Food",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Sign up for free",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                ),
                //!email
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    //! here
                    labelInputWithIcon(
                        CupertinoIcons.profile_circled, "Username"),
                    const SizedBox(
                      height: 10,
                    ),
                    labelInputWithIcon(CupertinoIcons.mail, "Email"),
                    const SizedBox(
                      height: 10,
                    ),
                    labelInputWithIcon(CupertinoIcons.lock, "Password"),

                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                  width: 20,
                ),
                //! or continuie
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [keepMeSignedUp(), keepMeSignedUp()],
                    ),
                  ],
                ),
                //!faang
                const SizedBox(
                  height: 20,
                ),
                Container(
                    width: 180,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Color(0xFF29ca7d),
                        borderRadius: BorderRadius.all(Radius.circular(17))),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/fifthpage");
                      },
                      child: const Text(
                        "Next",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "already have an account",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.w600),
                    ))
              ],
            ),
          ),
        ),
      )),
    );
  }
}
