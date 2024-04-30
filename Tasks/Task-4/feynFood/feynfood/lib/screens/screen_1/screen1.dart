import 'package:feynfood/screens/screen_1/screen2.dart';
import 'package:flutter/material.dart';

class ScreenFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Image.asset("assets/images/fourInOne.png"),
          //!TEXT
          Container(
            child: Column(
              //!text
              children: [
                const Text(
                  "Find your comfort",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const Text("Food here",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                const SizedBox(
                  height: 20,
                ),
                //! bottom text
                const Text("here you can find a chefor dish for every",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                const Text("taste and color. Enjoy!",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                const SizedBox(
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
                        Navigator.pushNamed(context, "/secondpage");
                      },
                      child: const Text(
                        "Next",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
