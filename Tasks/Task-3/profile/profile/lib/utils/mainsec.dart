import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile/utils/exp.dart';

List IconLst = [
  FontAwesomeIcons.mountain,
  FontAwesomeIcons.car,
  FontAwesomeIcons.book
];

Widget profileSec() {
  return Container(
    margin: const EdgeInsets.all(5),
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(13)),
      boxShadow: [
        BoxShadow(
          offset: Offset.zero,
          blurRadius: 0.5,
        ),
      ],
    ),
    padding: const EdgeInsets.only(bottom: 20),
    child: Column(
      children: [
        //! first big row
        Row(
          children: [
            const Padding(padding: EdgeInsets.all(5)),
            Container(
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('lib/images/profilePic.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            //!second column
            const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 20),
                  child: Column(
                    children: [
                      Text(
                        "G'olibjon To'ramurodov",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color.fromARGB(255, 91, 98, 217)),
                      ),
                      Text(
                        "Flutter developer",
                        style: TextStyle(fontSize: 15),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.twitter,
                                  color: Colors.blue,
                                  size: 25,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  FontAwesomeIcons.instagram,
                                  color: Colors.red,
                                  size: 25,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  FontAwesomeIcons.telegram,
                                  color: Colors.blue,
                                  size: 25,
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            //!Third column
            const Column(
              children: [
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.locationDot,
                      color: Colors.red,
                      size: 19,
                    ),
                    Text(
                      "Seoul",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
        //!bottom line
        Container(
          width: 360,
          decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(23, 0, 0, 0))),
        ), //!
        Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  height: 30,
                  width: 23,
                ),
                Text(
                  "Insterests",
                  style: TextStyle(fontSize: 17, color: Colors.grey.shade700),
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
            //!activities row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //!first
                interests(["hiking", "running", "reading"])
              ],
            )
          ],
        )
      ],
    ),
  );
}

Widget interests(List<String> interestLst) {
  List<Widget> lst = [];
  for (int i = 0; i < interestLst.length; i++) {
    var x = Container(
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: Color(0xFFEBEBFA),
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Row(
        children: [
          Text(
            interestLst[i],
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(
            iconLst[i],
            size: 17,
            color: Colors.blue,
          )
        ],
      ),
    );
    lst.add(x);
    lst.add(SizedBox(
      width: 15,
    ));
  }

  return Row(
    children: lst,
  );
}
