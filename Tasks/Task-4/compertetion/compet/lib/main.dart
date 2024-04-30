import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: appB(),
        body: SingleChildScrollView(
          //!big
          child: Container(
            height: 800,
            margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20)),
                border: Border.all(color: Colors.black)),
            child: Column(
              //!here
              children: [
                girl(),
                SizedBox(
                  height: 30,
                ),
                follow(),
                bahodir(),
                posts()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

appB() {
  return AppBar(
    backgroundColor: Colors.purple,
    leadingWidth: 100,
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(
        CupertinoIcons.arrow_left,
        color: Colors.white,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 25.0),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.ellipsis, color: Colors.white),
        ),
      ),
    ],
  );
}

//!my method
Widget follow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color.fromRGBO(97, 97, 97, 1))),
          padding: EdgeInsets.all(7),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message,
              color: Colors.blue,
              size: 30,
            ),
          )),
      TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: Colors.blue,
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 30, right: 30)),
        child: Text(
          "Follow",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18),
        ),
      ),
      Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: const Color.fromRGBO(97, 97, 97, 1))),
          padding: EdgeInsets.all(7),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message,
              color: Colors.blue,
              size: 30,
            ),
          )),
    ],
  );
}

Widget girl() {
  return Column(
    children: [
      Container(
        width: 70,
        height: 70,
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          // color: Colors.black,
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          "assets/images/img.png",
          fit: BoxFit.cover,
        ),
      ),
      const Text(
        "Ophelia Coleman",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      Text(
        "Los Angeles, CA",
        style: TextStyle(fontSize: 20, color: Colors.grey.shade700),
      ),
      const SizedBox(
        height: 10,
      ),
      const Text(
        "I'm a positive person. I love to travel and eat.",
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
      ),
      const SizedBox(
        height: 5,
      ),
      const Text(
        "Always available for chat",
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
      ),
    ],
  );
}

Widget bahodir() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text("Followers"), Text("View all")],
      )
    ],
  );
}

Widget posts() {
  List<String> imagePaths = [
    "assets/images/img.png",
    "assets/images/img.png",
    "assets/images/img.png",
    "assets/images/img.png",
    // ... other image paths
  ];

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Posts',
        style: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 25),
      GridView.builder(
        shrinkWrap: true, // Add this line
        physics: NeverScrollableScrollPhysics(), // Add this line
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: imagePaths.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildPostCard(imagePaths[index], index + 1);
        },
      ),
    ],
  );
}

Widget _buildPostCard(String imagePath, int index) {
  return Card(
    child: Column(
      children: [
        Image.asset(
          imagePath,
          height: 150,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 8.0),
      ],
    ),
  );
}
