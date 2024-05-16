import 'package:application/screens/page_main.dart';
import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double response = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text("17-dars"),
        actions: [
          IconButton(
              onPressed: () async {
                final selectedResponse = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (ctx) => PageMain(response: response)));
                if (selectedResponse != null) {
                  response = selectedResponse;
                }
              },
              icon: Icon(Icons.add))
        ],
      ),
    );
  }
}
