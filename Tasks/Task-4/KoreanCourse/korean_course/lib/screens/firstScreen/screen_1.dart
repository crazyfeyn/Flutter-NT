import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //!rocket
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color.fromARGB(255, 236, 209, 191),
              ),
              width: 380,
              height: 170,
              child: Center(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    const Text(
                      "Discover How\nTo Be Creative",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 33,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        "assets/images/rocket.png",
                        colorBlendMode: BlendMode.difference,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        //!instructor
        Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                //! instructor text
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Insturctor",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.red),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                //!imagePic
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [instructorTeachers()],
                ),
                const SizedBox(
                  height: 10,
                ),
                //! courses text
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Courses",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                //!all design
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.orange))),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "All",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                color: Colors.black),
                          )),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.black))),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Design",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade800),
                          )),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.black))),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Coding",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade800),
                          )),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.black))),
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Gaming",
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade800),
                          )),
                    )
                  ],
                ),
                //!scroll
                const SizedBox(
                  height: 20,
                ),
                //!rocket
                SingleChildScrollView(
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/second');
                          },
                          child: Container(
                            child: Column(
                              children: [
                                //!top
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/images/rocket.png",
                                      width: 65,
                                      height: 100,
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 1),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Row(
                                                  children: [
                                                    const Icon(
                                                      Icons.list_outlined,
                                                      color: Color(0xFF7974FE),
                                                      size: 26,
                                                    ),
                                                    const SizedBox(width: 4),
                                                    Text(
                                                      "24 Lessons",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors
                                                              .grey.shade700),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    const Icon(
                                                      Icons.play_circle_outline,
                                                      color: Color(0xFFFC6436),
                                                      size: 26,
                                                    ),
                                                    const SizedBox(width: 4),
                                                    Text(
                                                      "2h 30min",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors
                                                              .grey.shade700),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const Text(
                                              "Learn web development",
                                              style: TextStyle(
                                                  fontSize: 21,
                                                  fontWeight: FontWeight.w800,
                                                  color: Colors.black),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/second');
                          },
                          child: Container(
                            child: Column(
                              children: [
                                //!top
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/images/rocket.png",
                                      width: 65,
                                      height: 100,
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 1),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Row(
                                                  children: [
                                                    const Icon(
                                                      Icons.list_outlined,
                                                      color: Color(0xFF7974FE),
                                                      size: 26,
                                                    ),
                                                    const SizedBox(width: 4),
                                                    Text(
                                                      "24 Lessons",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors
                                                              .grey.shade700),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    const Icon(
                                                      Icons.play_circle_outline,
                                                      color: Color(0xFFFC6436),
                                                      size: 26,
                                                    ),
                                                    const SizedBox(width: 4),
                                                    Text(
                                                      "2h 30min",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors
                                                              .grey.shade700),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const Text(
                                              "Learn web development",
                                              style: TextStyle(
                                                  fontSize: 21,
                                                  fontWeight: FontWeight.w800,
                                                  color: Colors.black),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/second');
                          },
                          child: Container(
                            child: Column(
                              children: [
                                //!top
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      "assets/images/rocket.png",
                                      width: 65,
                                      height: 100,
                                    ),
                                    Expanded(
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 1),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Row(
                                                  children: [
                                                    const Icon(
                                                      Icons.list_outlined,
                                                      color: Color(0xFF7974FE),
                                                      size: 26,
                                                    ),
                                                    const SizedBox(width: 4),
                                                    Text(
                                                      "24 Lessons",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors
                                                              .grey.shade700),
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    const Icon(
                                                      Icons.play_circle_outline,
                                                      color: Color(0xFFFC6436),
                                                      size: 26,
                                                    ),
                                                    const SizedBox(width: 4),
                                                    Text(
                                                      "2h 30min",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors
                                                              .grey.shade700),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                            const Text(
                                              "Learn web development",
                                              style: TextStyle(
                                                  fontSize: 21,
                                                  fontWeight: FontWeight.w800,
                                                  color: Colors.black),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
                //!bottom
              ],
            ))
      ],
    );
  }
}

//!method
Widget instructorTeachers() {
  List<Widget> lst = [];
  for (int i = 0; i < 4; i++) {
    lst.add(Column(
      children: [
        Image.asset(
          "assets/images/teacherPic.png",
          width: 70,
        ),
        const Text(
          "아키라",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ],
    ));
    lst.add(const SizedBox(
      width: 10,
    ));
  }
  return Row(
    children: lst,
  );
}

//!scrollLesosns
Widget scrollLessons() {
  return TextButton(
      onPressed: () {
        // Navigator.of(context).pushNamed('/second');
      },
      child: Container(
        child: Column(
          children: [
            //!top
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/images/rocket.png",
                  width: 65,
                  height: 100,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.list_outlined,
                                  color: Color(0xFF7974FE),
                                  size: 26,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "24 Lessons",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade700),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.play_circle_outline,
                                  color: Color(0xFFFC6436),
                                  size: 26,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "2h 30min",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade700),
                                )
                              ],
                            ),
                          ],
                        ),
                        const Text(
                          "Learn web development",
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w800,
                              color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ));
}
