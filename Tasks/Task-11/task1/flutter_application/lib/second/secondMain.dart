import 'package:flutter/material.dart';
import 'package:flutter_application/second/pages/about.dart';
import 'package:flutter_application/second/pages/logout.dart';
import 'package:flutter_application/second/pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/profile": (context) => const Profile(),
          "/about": (context) => const About(),
          "/logout": (context) => const Logout(),
        },
        home: Home());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Hello"),
        actions: [
          PopupMenuButton(itemBuilder: (ctx) {
            return [
              PopupMenuItem(
                onTap: () {
                  Navigator.pushNamed(context, "/profile");
                },
                child: const Text("Profile"),
              ),
              PopupMenuItem(
                onTap: () {
                  Navigator.pushNamed(context, "/about");
                },
                child: const Text("About"),
              ),
              PopupMenuItem(
                onTap: () {
                  Navigator.pushNamed(context, "/logout");
                },
                child: const Text("Logout"),
              ),
            ];
          }),
        ],
      ),
    );
  }
}
