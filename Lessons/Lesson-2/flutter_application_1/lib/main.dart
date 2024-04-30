import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(List<String> args) {
  runApp(Practice());
}

class Practice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: Icon(Icons.search),
              title: Text("Search....."),
              actions: const [
                Icon(Icons.mic),
                Icon(
                  Icons.filter,
                  color: Colors.green,
                )
              ],
            ),
            body: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      width: 400,
                      height: 100,
                      color: Colors.yellow,
                      child: const Row(
                        children: [Icon(Icons.favorite)],
                      )),
                  const Text(
                    "The inspiring people helping with",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  const Text(
                    "Coronavirus Efforts",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    "The inspiring people helping with",
                    style: TextStyle(fontSize: 20),
                  ),
                  const Text(
                    "Coronavirus Efforts",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "7 july 2024 read more",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            )));
  }
}
