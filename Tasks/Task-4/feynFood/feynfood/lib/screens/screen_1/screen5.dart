import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Screen5();
  }
}

class _Screen5 extends State<Screen5> {
  ThemeMode _themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      themeMode: _themeMode,
      theme: ThemeData(primaryColor: Colors.red),
      home: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () {
                    _themeMode = _themeMode == ThemeMode.dark
                        ? ThemeMode.light
                        : ThemeMode.dark;
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.sunny,
                    size: 20,
                  ))
            ],
          ),
          body: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/back1.png"),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  AppBar(
                    backgroundColor: Colors.transparent,
                    leadingWidth: 95,
                    leading: IconButton(
                        padding: const EdgeInsets.all(10),
                        style: IconButton.styleFrom(
                            backgroundColor: const Color(0xFFfdf5ed),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)))),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.orange,
                          size: 45,
                        )),
                  ),
                  Column(
                    children: [
                      Text(
                        "Salom",
                        style: TextStyle(fontSize: 30),
                      )
                    ],
                  )
                ],
              ))),
    );
  }
}
