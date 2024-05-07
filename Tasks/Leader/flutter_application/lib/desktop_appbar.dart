import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar desktopAppbar() {
  return AppBar(
    leadingWidth: 630,
    leading: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          width: 20,
        ),
        Container(
          width: 100,
          height: 50,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/logo.png"),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 500,
          height: 40,
          child: TextField(
            style: const TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              hintText: "Search",
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
              prefixIcon: const Icon(
                Icons.search,
                size: 25,
              ),
              prefixIconColor: Colors.grey,
            ),
          ),
        )
      ],
    ),
    actions: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.checkmark_square),
        ),
        Text(
          "Write",
          style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.green),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              "Sign Up",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Sign In",
            style: TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        IconButton(
          style:
              IconButton.styleFrom(side: const BorderSide(color: Colors.grey)),
          onPressed: () {},
          icon: const Icon(
            Icons.person,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ]),
    ],
  );
}
