import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:korean_course/screens/secondScreen/intoductionLoop.dart';
import 'package:video_player/video_player.dart';

void main(List<String> args) {
  runApp(const SecondScreen());
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            margin: const EdgeInsetsDirectional.only(start: 12),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.grey.shade500)),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.keyboard_backspace_outlined,
                size: 27,
              ),
              color: Colors.black,
            ),
          ),
          title: const Text(
            "Course Details",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
          ),
          actions: [
            Container(
              width: 45,
              margin: const EdgeInsetsDirectional.only(end: 12),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey.shade500)),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    CupertinoIcons.heart_fill,
                    color: Color(0xFFFF6529),
                    size: 27,
                  )),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          //!big column
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                //!video enter
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //!for video
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: 300,
                    height: 180,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              //!playlist section
              Container(
                width: 350,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey.shade100),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //!first
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(17)),
                          color: Color(0xFF7677EB)),
                      child: const Text(
                        "Playlist (27)",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    //!second
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Color(0xFFF6F7F8)),
                      child: const Text(
                        "Description",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              //!music section
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: List.generate(8, (index) => playListRow(index)),
                ),
              )),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 300,
                      padding: const EdgeInsets.all(13),
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(14)),
                          color: Colors.orange),
                      child: const Text(
                        "Purchase only - 28\$",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(items: Container(child: Text("As"),)),
      ),
    );
  }
}

//! method
Widget playListRow(int index) {
  return Container(
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.play_circle),
              color: Colors.orange,
              iconSize: 50,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Introduction",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "2 min 43 sec",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            )
          ],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF7677EB),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(index != 0 ? Icons.lock : Icons.lock_open),
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}
