import 'package:flutter/material.dart';

class ScreenSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Image.asset("assets/images/fourInOne2.png"),
          //!TEXT
          Container(
            child: Column(
              //!text
              children: [
                const Text(
                  "Food Ninja is where your",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const Text("Comofort food lives",
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
                      onPressed: () {},
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
