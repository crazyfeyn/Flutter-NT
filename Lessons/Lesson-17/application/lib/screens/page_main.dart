import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageMain extends StatefulWidget {
  final double response;
  PageMain({required this.response});

  @override
  State<StatefulWidget> createState() {
    return _PageMain(response: response);
  }
}

class _PageMain extends State<PageMain> {
  final scrollController = ScrollController();
  final double response;

  _PageMain({required this.response});

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () {
      scrollController.animateTo(widget.response,
          duration: Duration(seconds: 1), curve: Curves.easeInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("17-dars"),
        leading: IconButton(
            onPressed: () async {
              Navigator.of(context).pop(scrollController.offset);
            },
            icon: Icon(Icons.keyboard_arrow_left)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
        ],
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        padding: EdgeInsets.all(20),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ...List.generate(100, (index) {
              return Card(
                color: Colors.yellow,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [Text("index $index")],
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
