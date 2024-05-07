import 'package:flutter/material.dart';
import 'package:sinf/utils/extensions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = context.height();
    double screenWidth = context.width();
    // double screenHeight = SizeUtils.height(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child:
              // Text(
              //     "Your screen's width is ${screenWidth.toStringAsFixed(2)} and height is ${screenHeight.toStringAsFixed(2)}"),
              Column(
        children: [
          Row(
            children: [
              Container(
                width: screenWidth * 0.25,
                color: Colors.black,
                height: screenHeight * 0.5,
              ),
              Container(
                width: screenWidth * 0.25,
                color: Colors.red,
                height: screenHeight * 0.5,
              ),
              Container(
                width: screenWidth * 0.25,
                color: Colors.yellow,
                height: screenHeight * 0.5,
              ),
              Container(
                width: screenWidth * 0.25,
                color: Colors.blue,
                height: screenHeight * 0.5,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: screenWidth * 0.25,
                color: Colors.blue,
                height: screenHeight * 0.5,
              ),
              Container(
                width: screenWidth * 0.25,
                color: Colors.yellow,
                height: screenHeight * 0.5,
              ),
              Container(
                width: screenWidth * 0.25,
                color: Colors.red,
                height: screenHeight * 0.5,
              ),
              Container(
                width: screenWidth * 0.25,
                color: Colors.black,
                height: screenHeight * 0.5,
              ),
            ],
          )
        ],
      )),
    );
  }
}
