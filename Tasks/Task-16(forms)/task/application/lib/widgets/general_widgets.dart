import 'package:application/utils/database.dart';
import 'package:application/utils/extensions.dart';
import 'package:application/utils/tools.dart';
import 'package:flutter/material.dart';

Widget text1() {
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        "Let's start your",
        style: Tools.boldStyle,
      ),
      Text(
        "Schedule activity",
        style: Tools.boldStyle,
      ),
    ],
  );
}

Widget text2_1() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        "Welcome back",
        style: Tools.boldStyle,
      ),
      7.height(),
      Text(
        "Let's connect to your own profile with email",
        style: Tools.solidStyle,
      ),
    ],
  );
}

Widget textGeneralBold(String text, String text2) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        text,
        style: Tools.boldStyle,
      ),
      7.height(),
      Text(
        text2,
        style: Tools.solidStyle,
      ),
    ],
  );
}

Widget text2() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        "Quicky see your upcoming event, task,",
        style: Tools.solidStyle,
      ),
      Text(
        "conference calls, wheather and more...",
        style: Tools.solidStyle,
      )
    ],
  );
}

Widget buttonBig(String text, Function togglePageAdd,
    [GlobalKey<FormState>? formKey, List? userDataList, bool? quickCheckUser]) {
  return InkWell(
    onTap: () {
      if (formKey?.currentState?.validate() ?? true) {
        if (userDataList != null && userDataList.length >= 2) {
          DataBase.userDataBase
              .add({'email': userDataList[1], 'password': userDataList[2]});
        }

        formKey?.currentState?.save();
        togglePageAdd();
      }
    },
    child: Container(
      width: 350,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 100),
      decoration: BoxDecoration(
        color: const Color(0xFF4155FA),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),
      ),
    ),
  );
}

Widget faangLogin() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      InkWell(
          onTap: () {},
          child: Container(
            width: 180,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(7)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.apple,
                  size: 33,
                ),
                Text(
                  "Apple",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          )),
      InkWell(
          onTap: () {},
          child: Container(
            width: 180,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(7)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.facebook,
                  size: 33,
                  color: Colors.blue,
                ),
                Text(
                  "Facebook",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ))
    ],
  );
}

Widget dontHaveAcc() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text(
        "Forgot your password?",
        style: Tools.solidStyle,
      )
    ],
  );
}

Widget dont() {
  return RichText(
      text: TextSpan(
          text: 'Dont you have an account?',
          style: Tools.solidStyle,
          children: const [
        TextSpan(
            text: ' Sign up here',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 16))
      ]));
}

Widget haveAnAcc([bool? IsAccess, Function? toggleSignIn]) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text(
        "You have an account",
        style: Tools.solidStyle,
      ),
      TextButton(
          onPressed: () {
            if (IsAccess != null) {
              toggleSignIn!();
            }
          },
          child: const Text('Sign in here',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 16)))
    ],
  );
}

Widget cruText(String text1, String text2) {
  return RichText(
      text: TextSpan(text: text1, style: Tools.solidStyle, children: [
    TextSpan(
        text: text2,
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.w700, fontSize: 16))
  ]));
}

Widget codes() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      SizedBox(
        width: 70,
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: '0',
            hintStyle:
                const TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
      SizedBox(
        width: 70,
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: '0',
            hintStyle:
                const TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
      SizedBox(
        width: 70,
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: '0',
            hintStyle:
                const TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
      SizedBox(
        width: 70,
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: '0',
            hintStyle:
                const TextStyle(fontWeight: FontWeight.w700, fontSize: 23),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ),
    ],
  );
}
