import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile/utils/exp.dart';
import 'package:profile/utils/mainsec.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF646AE7),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
            iconSize: 30,
            color: Colors.white,
          ),
          actions: [
            Builder(
              builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 33,
                ),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                children: [
                  //! first section
                  profileSec(),
                  const SizedBox(
                    height: 16,
                  ),
                  //! second section
                  Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset.zero,
                          blurRadius: 0.5,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        //!resume row
                        const Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Resume",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        //!Line
                        Container(
                          width: 350,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 165, 158, 158)),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        //!CV
                        Container(
                          padding: const EdgeInsets.only(left: 0, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                          FontAwesomeIcons.paperclip)),
                                  const Text(
                                    "Toramurodov G'olib CV",
                                    style: TextStyle(fontSize: 16),
                                  )
                                ],
                              ),
                              const Icon(
                                FontAwesomeIcons.download,
                                color: Color(0xFF5859E5),
                                size: 22,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  //!experience section
                  Container(
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset.zero,
                          blurRadius: 0.5,
                        ),
                      ],
                    ), //!main section for exp sect
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            SizedBox(width: 5),
                            Text(
                              "Experience",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Container(
                          width: 350,
                          margin: const EdgeInsets.only(top: 10, bottom: 5),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 165, 158, 158)),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        //!business name section
                        expIterateLoop([
                          "UX/UI designer",
                          "Software engineer",
                          "Data scientist",
                          "Artist"
                        ])
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
