import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
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
                  "LogIn to your account",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                ),
                //!email
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                      width: 300,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey)),
                      child: const Text(
                        "Email",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 300,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey)),
                      child: const Text(
                        "Password",
                        style: TextStyle(fontSize: 20),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                //! or cont
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Or continuie with",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    )
                  ],
                ),
                //!faang
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 180,
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/images/face.png",
                            width: 35,
                          ),
                          Text(
                            "Facebook",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 180,
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            "assets/images/goog.png",
                            width: 35,
                          ),
                          Text(
                            "Google",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Forgot your password",
                        style: TextStyle(
                            color: Color(0xFF2ecf7f),
                            fontSize: 15,
                            fontWeight: FontWeight.w500))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    // padding: EdgeInsets.all(10),
                    width: 180,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Color(0xFF29ca7d),
                        borderRadius: BorderRadius.all(Radius.circular(17))),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/fourthpage");
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ))
              ],
            ),
          ),
        ),
      )),
    );
  }
}
