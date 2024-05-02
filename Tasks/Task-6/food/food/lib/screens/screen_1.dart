import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            //!text
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Choose your",
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      "favourite food",
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      "2 of 5",
                      style: TextStyle(fontSize: 19),
                    )
                  ],
                ),
              ],
            ),
            //! middle
            const SizedBox(
              height: 40,
            ),
            fourInOne(),
            const SizedBox(
              height: 300,
            ),
            last(),
          ],
        ));
  }
}

Widget oneBtn(rang, String yozuv) {
  return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFe6decb)),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 7),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Text(
          yozuv,
          style: const TextStyle(
              fontWeight: FontWeight.w600, color: Colors.white, fontSize: 18),
        ),
      ));
}

Widget oneBtnRow() {
  List<Widget> lst = [];
  for (int i = 0; i < 10; i++) {
    lst.add(oneBtn(const Color(0xFFe6decb), "Cheese"));
    lst.add(const SizedBox(
      width: 5,
    ));
  }

  return Row(
    children: lst,
  );
}

Widget fourInOne() {
  List<Widget> lst = [];
  for (int i = 0; i < 4; i++) {
    lst.add(SingleChildScrollView(
        scrollDirection: Axis.horizontal, child: oneBtnRow()));
    lst.add(const SizedBox(
      height: 10,
    ));
  }
  return Column(
    children: lst,
  );
}

Widget last() {
  return Container(
    width: 200,
    padding: const EdgeInsets.all(15),
    decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        color: Colors.brown,
        border: Border.all(color: Colors.black)),
    child: const Text("Continuie",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.w600, color: Colors.white, fontSize: 20)),
  );
}
