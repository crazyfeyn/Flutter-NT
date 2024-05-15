import 'package:flutter/material.dart';

class TabbarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("App Bar"),
          ),
          body: Column(
            children: [
              const TabBar(tabs: [
                Tab(
                  child: Icon(Icons.home),
                ),
                Tab(
                  child: Icon(Icons.settings),
                ),
                Tab(
                  child: Icon(Icons.person),
                ),
              ]),
              Expanded(
                  child: TabBarView(children: [
                Container(
                  color: Colors.red,
                  child: const Center(
                    child: Text("1- tabbar"),
                  ),
                ),
                Container(
                  color: Colors.yellow,
                  child: const Center(
                    child: Text("2- tabbar"),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  child: const Center(
                    child: Text("3- tabbar"),
                  ),
                ),
              ]))
            ],
          ),
        ));
  }
}
