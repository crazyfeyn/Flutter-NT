// deleteIcon: Icon(
//               CupertinoIcons.xmark_circle_fill,
//               size: 35,
//             ),
//             deleteIconColor: Colors.white,
//             onDeleted: () {},

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/utils/extensions.dart';
import 'package:flutter_application/utils/tools.dart';

topSearch_1() {
  return Container(
    margin: EdgeInsets.only(bottom: 30),
    child: Chip(
      backgroundColor: const Color(0xFF37374C),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      label: const TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            labelText: "Search by title, genre, actor",
            labelStyle: TextStyle(fontSize: 17, color: Colors.white)),
      ),
      avatar: const Icon(
        Icons.search,
        size: 35,
        color: Colors.white,
      ),
    ),
  );
}

recentText() {
  return const Row(
    children: [
      Text(
        "Recent searches",
        style: Tools.justStyle,
      )
    ],
  );
}

recentText_2() {
  return const Row(
    children: [
      Text(
        "Results for comedy",
        style: Tools.justStyle,
      )
    ],
  );
}

Widget maskFilm() {
  return Expanded(
      child: Container(
    width: 120,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    clipBehavior: Clip.hardEdge,
    child: Image.asset("assets/images/mask.png"),
  ));
}

scrollFilm() {
  return Container(
    child: Expanded(
        child: SingleChildScrollView(
      child: Wrap(
        spacing: 10,
        runSpacing: 10,
        children: List.generate(15, (index) => maskFilm()),
      ),
    )),
  );
}

recentButtons(String text) {
  return Chip(
    padding: EdgeInsets.all(10),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
    backgroundColor: Color(0xFF110B35),
    label: Text(
      text,
      style: const TextStyle(
          color: Color(0xFF4037B0), fontWeight: FontWeight.w600, fontSize: 19),
    ),
    avatar: const Icon(
      CupertinoIcons.time,
      size: 25,
    ),
  );
}

recentButtonAll(List<String> recentTextLst) {
  return SizedBox(
      width: 380,
      child: Wrap(spacing: 15, runSpacing: 15, children: [
        recentButtons(recentTextLst[0]),
        recentButtons(recentTextLst[1]),
        recentButtons(recentTextLst[2]),
        recentButtons(recentTextLst[3]),
      ]));
}

Widget mainPageRoute(
    List<String> recentTextLst, int _selectedIndex, _onItemTapped) {
  return Container(
    color: const Color(0xFF06041F),
    padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        topSearch_1(),
        recentText(),
        20.height(),
        recentButtonAll(recentTextLst)
      ],
    ),
  );
}

Widget searchPageRoute() {
  return Container(
    color: const Color(0xFF06041F),
    padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 15),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [topSearch_2(), recentText_2(), 20.height(), scrollFilm()],
    ),
  );
}

topSearch_2() {
  return Container(
    margin: EdgeInsets.only(bottom: 30),
    child: Chip(
      backgroundColor: const Color(0xFF37374C),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      label: const TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            labelText: "Search by title, genre, actor",
            labelStyle: TextStyle(fontSize: 17, color: Colors.white)),
      ),
      avatar: const Icon(
        Icons.search,
        size: 35,
        color: Colors.white,
      ),
      deleteIcon: const Icon(
        CupertinoIcons.xmark_circle,
        color: Colors.white,
        size: 30,
      ),
      onDeleted: () {},
    ),
  );
}

Widget downloadText() {
  return Text(
    "Donwload",
    style: Tools.justStyle.copyWith(fontSize: 25),
  );
}

Widget lstAndDown() {
  return Row(
    children: [
      Container(
          padding: const EdgeInsets.all(10),
          child: ElevatedButton(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
              onPressed: () {},
              child: Text(
                "List Movie",
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 21,
                ),
              ))),
      Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent),
                  onPressed: () {},
                  child: const Text(
                    "Downloading",
                    style: TextStyle(
                      color: Color(0xFF4037B0),
                      fontSize: 21,
                    ),
                  )),
              const SizedBox(
                width: 200,
                child: Divider(
                  color: Color(0xFF4037B0),
                  thickness: 2,
                ),
              )
            ],
          )),
    ],
  );
}

Widget maskContainerSerious(
    playLst, int iconSelect, toggleIcon, BuildContext context, double height) {
  return Container(
    decoration: BoxDecoration(
        color: const Color(0xFF231E38),
        borderRadius: BorderRadius.circular(20)),
    width: double.infinity,
    padding: const EdgeInsets.all(7),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        //!first
        Container(
          width: 120,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          clipBehavior: Clip.hardEdge,
          child: Image.asset("assets/images/mask.png"),
        ),
        20.width(),
        Expanded(
            child: Column(
          //!column for text etc
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "The Mask the first holliwud movie in the world (1991)",
              textAlign: TextAlign.start,
              style: Tools.justStyle
                  .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            7.height(),
            SizedBox(
              width: 130,
              height: 20,
              child: Image.asset(
                "assets/images/logo.png",
                fit: BoxFit.cover,
              ),
            ),
            15.height(),
            //!starting problems
            Row(
              children: [
                SizedBox(
                  width: 200,
                  child: Column(
                    children: [
                      //!row_line
                      Row(
                        children: [
                          const Expanded(
                            flex: 7,
                            child: SizedBox(
                              child: Divider(
                                color: Color(0xFF4037B0),
                                thickness: 4,
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: SizedBox(
                                child: Divider(
                                  color: Colors.grey.shade300,
                                  thickness: 4,
                                ),
                              ))
                        ],
                      ),
                      //!MB
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "720K/S",
                            style: TextStyle(
                              color: Colors.grey.shade100,
                            ),
                          ),
                          Text(
                            "250MG/1.5GB",
                            style: TextStyle(
                              color: Colors.grey.shade400,
                            ),
                          )
                        ],
                      ),
                      //!real problem
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //!first
                          IconButton(
                            onPressed: () {
                              toggleIcon(iconSelect);
                            },
                            icon: Icon(playLst[iconSelect]),
                            color: Colors.white,
                          ),
                          //!second
                          IconButton(
                            onPressed: () {
                              showMenu(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                color: Colors.grey.shade800,
                                context: context,
                                position: RelativeRect.fromLTRB(
                                    double.infinity, height, 0, 0),
                                items: [
                                  PopupMenuItem<String>(
                                    value: "item1",
                                    child: Text(
                                      "Re-download",
                                      style: Tools.justStyle
                                          .copyWith(fontSize: 17),
                                    ),
                                  ),
                                  PopupMenuItem<String>(
                                    value: "item2",
                                    child: Text(
                                      "Details",
                                      style: Tools.justStyle
                                          .copyWith(fontSize: 17),
                                    ),
                                  ),
                                  PopupMenuItem<String>(
                                    value: "item3",
                                    child: Text(
                                      "Delete",
                                      style: Tools.justStyle
                                          .copyWith(fontSize: 17),
                                    ),
                                  ),
                                ],
                              );
                            },
                            icon: Icon(Icons.menu),
                            color: Colors.white,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ))
      ],
    ),
  );
}

Widget donwloadPageRoute(playLst, toggleIcon, BuildContext context) {
  return Container(
      color: const Color(0xFF06041F),
      padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 15),
      child: Center(
        child: Column(
          children: [
            downloadText(),
            30.height(),
            lstAndDown(),
            SizedBox(
              height: 400,
              child: Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Wrap(
                      children: [
                        //!container
                        maskContainerSerious(
                            playLst, 0, toggleIcon, context, 350),
                        20.height(),
                        maskContainerSerious(
                            playLst, 1, toggleIcon, context, 535)
                      ],
                    )
                  ],
                ),
              )),
            )
          ],
        ),
      ));
}
