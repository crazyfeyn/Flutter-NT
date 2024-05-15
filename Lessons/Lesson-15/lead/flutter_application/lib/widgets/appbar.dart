import 'package:flutter/material.dart';

AppBar shoxruxApp() {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.blue,
    title: const Text(
      'Mening Hamyonim',
      style: TextStyle(color: Colors.white),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    ],
  );
}
