import 'package:application/screens/home_screen.dart';
import 'package:application/utils/tools/general_tools.dart';
import 'package:flutter/material.dart';

Widget searchBar(toggleClear, controller, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SizedBox(
        width: 300,
        height: 60,
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
            label: const Text("Search"),
            labelStyle: Tools.solidStyle,
            hintText: 'Search',
            hintStyle: TextStyle(
              color: Colors.grey.shade600,
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: Color(0xFF9372F1),
            ),
          ),
          style: Tools.solidStyle,
          cursorColor: Colors.white,
        ),
      ),
      InkWell(
        onTap: () {
          toggleClear();
          Navigator.pushReplacement<void, void>(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const HomeScreen(),
    ),
  );
        },
        child: Text(
          "Cancel",
          style: Tools.solidStyle,
        ),
      )
    ],
  );
}
