import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:playlist/screens/screen_last.dart';
import 'package:playlist/screens/screen_popularShow.dart';
import 'package:playlist/utils/extensions/extensions.dart';

Widget linuxStack(toggleIcon, currentIcon) {
  return Container(
    height: 1.sw,
    child: Stack(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(45),
            child: Stack(
              children: [
                Container(
                  width: 0.85.sw,
                  height: double.infinity,
                  clipBehavior: Clip.hardEdge,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/linux.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            )),
        Positioned(
          bottom: 0.h,
          right: 5.w,
          child: IconButton(
              onPressed: () {
                toggleIcon();
              },
              icon: Icon(
                currentIcon,
                color: const Color(0xFF8773FF),
                size: 75.sp,
              )),
        ),
      ],
    ),
  );
}

inkwellBtn(BuildContext context) {
  return InkWell(
    splashColor: Colors.purple,
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => PopularShowScreen()));
    },
    borderRadius: BorderRadius.circular(15),
    child: ClipRRect(
      clipBehavior: Clip.hardEdge,
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 115, vertical: 15),
        color: const Color(0xFF8773FF),
        child: const Text(
          "Log In",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 23,
          ),
        ),
      ),
    ),
  );
}

inkwellBtnWhite(BuildContext context) {
  return InkWell(
    splashColor: Colors.white,
    onTap: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => PopularShowScreen()));
    },
    borderRadius: BorderRadius.circular(15),
    child: ClipRRect(
      clipBehavior: Clip.hardEdge,
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 115, vertical: 15),
        child: const Text(
          "Sign Up",
          style: TextStyle(
            color: Color(0xFF8773FF),
            fontWeight: FontWeight.w700,
            fontSize: 23,
          ),
        ),
      ),
    ),
  );
}

Widget popularLinux() {
  return Container(
    clipBehavior: Clip.hardEdge,
    width: 0.85.sw,
    height: 0.85.sw,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
        image: DecorationImage(
            image: AssetImage("assets/images/linux.png"), fit: BoxFit.cover)),
  );
}

Widget playShowsButton(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LastScreen()));
        },
        splashColor: Colors.purple,
        borderRadius: BorderRadius.circular(15),
        child: Ink(
          padding: EdgeInsets.all(17),
          decoration: BoxDecoration(
              color: Color(0xFF8773FF),
              borderRadius: BorderRadius.circular(15)),
          child: Text(
            "Play All show",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16),
          ),
        ),
      ),
      InkWell(
        onTap: () {},
        splashColor: Colors.transparent,
        borderRadius: BorderRadius.circular(15),
        child: Ink(
          padding: EdgeInsets.all(17),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(15)),
          child: Text(
            "Play All show",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 16),
          ),
        ),
      )
    ],
  );
}

Widget showsText() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text(
        "12 Popular shows",
        style: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w700, fontSize: 22),
      ),
      Text(
        "See All",
        style: TextStyle(
            color: Colors.grey.shade600,
            fontWeight: FontWeight.w700,
            fontSize: 19),
      ),
    ],
  );
}

Widget scroll(Function toggleIcon, currentIcon) {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Image.asset(
                  "assets/images/linux.png",
                  width: 100,
                ),
              ),
              15.width(),
              //!second
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enjoy",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 22),
                  ),
                  "Socially Buzzed".thinStyle()
                ],
              ),
            ],
          ),
          //!third
          InkWell(
            onTap: () {
              toggleIcon();
            },
            splashColor: Colors.transparent,
            borderRadius: BorderRadius.circular(0.5.sw),
            child: Ink(
              child: Icon(
                currentIcon,
                color: Colors.grey,
                size: 60,
              ),
            ),
          ),
        ],
      ),
      20.height()
    ],
  );
}

Widget scrollSect(Function toggleIcon, currentIcon) {
  return SizedBox(
    width: 0.8.sw,
    height: 166,
    child: Expanded(
      child: SingleChildScrollView(
        child: Column(
          children:
              List.generate(5, (index) => scroll(toggleIcon, currentIcon)),
        ),
      ),
    ),
  );
}

Widget playAll(BuildContext context) {
  return SizedBox(
      width: 0.8.sw,
      child: Column(
        children: [
          playShowsButton(context),
          20.height(),
          showsText(),
        ],
      ));
}

Widget rowchalar() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(
              "assets/images/linux.png",
              width: 100,
            ),
          ),
          Column(
            children: [
              Container(
                width: 200,
                child: Column(
                  children: [
                    Text(
                      "Subscribe your listen you can",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    "     685 Podcast   ".thinStyle(),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xFF8773FF)),
                      child: Text(
                        "Subscribe",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
      15.height()
    ],
  );
}
