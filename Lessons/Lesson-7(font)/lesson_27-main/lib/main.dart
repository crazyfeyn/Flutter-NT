import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.back,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Working with Fonts",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.bookmark_solid,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Icon(
                    Icons.facebook,
                    color: Colors.blue.shade900,
                    size: 50,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Software Engineer",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Jersey10",
                  ),
                ),
                const Text(
                  "Facebook",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Sevilana",
                      fontSize: 25),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "Design",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Sevilana",
                            fontSize: 25),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "Full-Time",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Sevilana",
                            fontSize: 25),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        "Junior",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Sevilana",
                            fontSize: 25),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "\$180,000/year",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: "Jersey10",
                      ),
                    ),
                    Text(
                      "Seattle, USA",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: "Jersey10"),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Description",
                      style:
                          GoogleFonts.josefinSans(fontWeight: FontWeight.w700),
                    ),
                    Text("Requirement",
                        style: GoogleFonts.josefinSans(
                            fontWeight: FontWeight.w700)),
                    Text("About",
                        style: GoogleFonts.josefinSans(
                            fontWeight: FontWeight.w700)),
                    Text("Reviews",
                        style: GoogleFonts.josefinSans(
                            fontWeight: FontWeight.w700)),
                  ],
                ),
                const SizedBox(height: 20),
                Text(
                  "Mollit cillum in ut adipisicing cillum ex non consectetur nisi in irure anim sint minim. Nulla aute nostrud sit irure eiusmod qui et elit ullamco reprehenderit quis cupidatat sit magna.Nisi laborum excepteur qui veniam.",
                  style: GoogleFonts.antonio(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
                Text(
                  "Responsibilities:",
                  style: GoogleFonts.antonio(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    Icon(
                      Icons.circle,
                      size: 8,
                      color: Colors.grey.shade600,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Dolor in ipsum in anim quis anim amet ipsum non amet qui dolor.",
                        style: GoogleFonts.antonio(fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    Icon(
                      Icons.circle,
                      size: 8,
                      color: Colors.grey.shade600,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Dolor in ipsum in anim quis anim amet ipsum non amet qui dolor.",
                        style: GoogleFonts.antonio(fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const SizedBox(width: 10),
                    Icon(
                      Icons.circle,
                      size: 8,
                      color: Colors.grey.shade600,
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "Dolor in ipsum in anim quis anim amet ipsum non amet qui dolor.",
                        style: GoogleFonts.antonio(fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                  ),
                  child: Text(
                    "Apply Now",
                    style: GoogleFonts.antonio(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
