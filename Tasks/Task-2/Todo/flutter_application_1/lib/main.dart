import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Todo());
}

class Todo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.menu),
            title: const Text(
              "My Todo",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            actions: const [Icon(Icons.notifications)],
          ),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: const Color.fromARGB(255, 148, 229, 151)),
                  width: double.infinity,
                  padding: const EdgeInsets.all(25),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.green,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Complete Flutter UI App",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("Challenge and upload it",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("on GitHub",
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                      Text(
                        "1h 25min",
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text("Remaining tasks", style: TextStyle(fontSize: 25)),
                    Text(
                      "(24)",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                    )
                  ],
                ),
                Container(
                  width: double.infinity,
                  color: Colors.white12,
                  padding: const EdgeInsets.all(25),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.blue,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Complete All the college",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("assignments",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Text(
                        "May 16",
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.white12,
                  padding: const EdgeInsets.all(25),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.blue,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Complete All the college",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("assignments",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Text(
                        "May 17",
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.white12,
                  padding: const EdgeInsets.all(25),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.note,
                        color: Colors.blue,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Complete All the college",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("assignments",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Text(
                        "May 18",
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.white12,
                  padding: const EdgeInsets.all(25),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.cake,
                        color: Colors.blue,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Complete All the college",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("assignments",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Text(
                        "May 19",
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.white12,
                  padding: const EdgeInsets.all(25),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Colors.blue,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Complete All the college",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("assignments",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Text(
                        "May 20",
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
