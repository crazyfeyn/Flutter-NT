import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/utils/extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget mobileRes(bool isPhone, double screenH, double screenW) {
  return Column(
    children: [
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/back.png"),
                fit: BoxFit.cover)),
        height: screenH * 0.5,
        child: AppBar(
          backgroundColor: Colors.transparent,
          leadingWidth: 130.sp,
          leading: Padding(
            padding: EdgeInsets.only(left: 15.sp),
            child: Image.asset(
              "assets/images/icon1.png",
            ),
          ),
          actions: [
            Row(
              children: [
                Text(
                  "HAVE AN ACCOUNT? ",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                Text(
                  "SIGN IN  ",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.all(20),
        height: screenH * 0.5,
        width: double.infinity,
        color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            "SIGN IN".largeString(),
            15.height(),
            "Sign in with email address".littleString(),
            10.height(),
            Container(
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.grey.shade100),
                  borderRadius: BorderRadius.circular(7)),
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.grey.shade300,
                  ),
                  5.width(),
                  const Text(
                    "Yourname@gmail.com",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            25.height(),
            Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: EdgeInsets.all(15.sp),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Color(0xFF501794), Color(0xFFE70A1)])),
                child: "Sign up".largeString()),
            45.height(),
            Container(
              width: screenW * 0.25,
              height: 1,
              decoration: BoxDecoration(color: Colors.white),
            ),
            25.height(),
            "Or continuie with".littleString(),
            10.height(),
            Row(
              children: [
                Image.asset(
                  "assets/images/google.png",
                  width: 180,
                ),
                20.width(),
                Image.asset(
                  "assets/images/facebook.png",
                  width: 180,
                )
              ],
            ),
            20.height(),
            RichText(
                text: TextSpan(
              style: TextStyle(color: Colors.white, fontSize: 14),
              children: [
                TextSpan(
                  text: "By registering you with our  ",
                ),
                TextSpan(
                    text: "Terms and Conditions",
                    style: TextStyle(color: Colors.purple, fontSize: 16))
              ],
            ))
          ],
        ),
      ),
      10.height(),
      Text(
        "or continuie with",
        style: TextStyle(color: Colors.white),
      )
    ],
  );
}

Widget desktopRes(bool isPhone, double screenH, double screenW) {
  return Row(
    children: [
      Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/back.png"),
                  fit: BoxFit.cover)),
          height: screenH,
          width: screenW * 0.6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                leadingWidth: 130.sp,
                leading: Padding(
                  padding: EdgeInsets.only(left: 15.sp),
                  child: Image.asset(
                    "assets/images/icon1.png",
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "        Sign in to your",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "        Adventure",
                    style: TextStyle(
                        fontSize: 25,
                        color: const Color.fromARGB(255, 102, 17, 117),
                        fontWeight: FontWeight.w600),
                  )
                ],
              )
            ],
          )),
      Padding(
        padding: EdgeInsets.only(left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            "SIGN IN".largeString(),
            15.height(),
            "Sign in with email address".littleString(),
            10.height(),
            Container(
              width: screenW * 0.25,
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(7)),
              child: Row(
                children: [
                  Icon(Icons.mail, color: Colors.grey.shade300),
                  5.width(),
                  Text(
                    "Yourname@gmail.com",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            25.height(),
            Container(
                width: screenW * 0.25,
                alignment: Alignment.center,
                padding: EdgeInsets.all(5.sp),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: <Color>[Color(0xFF501794), Color(0xFFE70A1)])),
                child: "Sign up".largeString()),
            45.height(),
            Container(
              width: screenW * 0.25,
              height: 1,
              decoration: BoxDecoration(color: Colors.white),
            ),
            25.height(),
            "Or continuie with".littleString(),
            10.height(),
            Row(
              children: [
                Image.asset(
                  "assets/images/google.png",
                  width: 250,
                ),
                10.width(),
                Image.asset(
                  "assets/images/facebook.png",
                  width: 250,
                )
              ],
            ),
            20.height(),
            RichText(
                text: TextSpan(
              style: TextStyle(color: Colors.white, fontSize: 16),
              children: [
                TextSpan(
                  text: "By registering you with our  ",
                ),
                TextSpan(
                    text: "Terms and Conditions",
                    style: TextStyle(color: Colors.purple, fontSize: 18))
              ],
            ))
          ],
        ),
      )
    ],
  );
}
