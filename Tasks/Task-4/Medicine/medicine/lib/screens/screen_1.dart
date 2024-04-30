import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          //!big
          child: Container(
            padding: const EdgeInsets.all(20),
            height: 170,
            width: double.infinity,
            child: Column(
              children: [
                //!hi medicine
                const Row(
                  children: [
                    Text(
                      "HI, MEDICINE",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
                //! search
                const SizedBox(height: 17),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.white),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey.shade500,
                        size: 25,
                      ),
                      Text(
                        "Search for diseases, symptoms",
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ), //!------------------------middle------------------------
        Container(
          color: Colors.white,
          padding: const EdgeInsets.all(17),
          child: Column(
            children: [
              //!popular disease
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Disease",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "All",
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w600,
                            fontSize: 19),
                      ),
                      Icon(
                        CupertinoIcons.right_chevron,
                        size: 20,
                        color: Colors.grey.shade700,
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //! lung rocket
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/second");
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/rocket.png",
                            width: 50,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text("Lung",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19))
                        ],
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/second");
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/rocket.png",
                            width: 50,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text("Lung",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19))
                        ],
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/second");
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/rocket.png",
                            width: 50,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text("Lung",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19))
                        ],
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/second");
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/rocket.png",
                            width: 50,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text("Lung",
                              style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19))
                        ],
                      )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              //!database
              const Row(
                children: [
                  Text("Databse",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 18))
                ],
              ),
              //!images trick
              Container(
                height: 300,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/pic1.png",
                      width: 200,
                      height: 500,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/pic2.png",
                          width: 150,
                          height: 100,
                        ),
                        Image.asset(
                          "assets/pic3.png",
                          width: 150,
                          height: 100,
                        )
                      ],
                    )
                  ],
                ),
              ),
              //!news
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(children: [
                    Text("News",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18))
                  ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "All",
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w600,
                            fontSize: 19),
                      ),
                      Icon(
                        CupertinoIcons.right_chevron,
                        size: 20,
                        color: Colors.grey.shade700,
                      )
                    ],
                  )
                ],
              ),
              //! bottom news
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "assets/pic4.png",
                    width: 150,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Some of the pitfalss ",
                            style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "have very painfully ",
                            style: TextStyle(
                                color: Colors.grey.shade700,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "1 hour ago",
                        style: TextStyle(
                            color: Colors.grey.shade700, fontSize: 14),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
