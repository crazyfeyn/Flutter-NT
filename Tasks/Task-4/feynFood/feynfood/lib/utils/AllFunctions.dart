import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget labelInputWithIcon(iconka, yozuv) {
  return Container(
      width: 300,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(iconka),
          SizedBox(
            width: 10,
          ),
          Text(
            yozuv,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ));
}

Widget keepMeSignedUp() {
  return Row(
    children: [
      Icon(
        CupertinoIcons.check_mark_circled,
        size: 40,
        color: Colors.green,
      ),
      SizedBox(
        width: 5,
      ),
      Text(
        "keep me signed up",
        style: TextStyle(fontSize: 18),
      )
    ],
  );
}
