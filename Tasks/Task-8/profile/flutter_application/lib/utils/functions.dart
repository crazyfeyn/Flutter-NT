import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/utils/styles.dart';

Widget topRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      //!first
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Monday",
            style: AppTextStyles.littleWeek,
          ),
          Text(
            "25 October",
            style: AppTextStyles.bigWeek,
          )
        ],
      ),

      //! second
      Row(
        children: [
          Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  shape: BoxShape.circle),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 46,
                ),
              )),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            "assets/images/profile.png",
            width: 65,
          )
        ],
      )
    ],
  );
}

Widget middleText1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        "Hi Surf",
        style: AppTextStyles.bigWeek,
      )
    ],
  );
}

Widget middleText2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        "5 Tasks are pending",
        style: AppTextStyles.littleWeek,
      )
    ],
  );
}

Widget infoBox() {
  return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), color: Color(0xFF6f64ea)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "Information Architecture",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          "Saber & Oro",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 24,
                  width: 24,
                  child: Image.asset("assets/images/profile2.png"),
                ),
                Container(
                  height: 24,
                  width: 24,
                  child: Image.asset("assets/images/profile3.png"),
                ),
              ],
            ),
            Text(
              "Now",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ],
    ),
  );
}

Widget space(double number) {
  return SizedBox(height: number);
}

Widget monthly() {
  return Row(
    children: [
      Text(
        "Monthly Preview",
        style: AppTextStyles.bigWeek,
      )
    ],
  );
}

Widget boxes(double v, double h, String t1, String t2, rang) {
  return Container(
    width: 160,
    padding: EdgeInsets.symmetric(vertical: v, horizontal: h),
    decoration:
        BoxDecoration(color: rang, borderRadius: BorderRadius.circular(20)),
    child: Column(
      children: [
        Text(
          t1,
          style: AppTextStyles.bigWeek.copyWith(
              color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold),
        ),
        Text(
          t2,
          style: TextStyle(
              color: Colors.white, fontSize: 19, fontWeight: FontWeight.w500),
        )
      ],
    ),
  );
}

class ForTopRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), shape: BoxShape.circle),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/first');
              },
              icon: Icon(
                Icons.arrow_back,
                size: 30,
              ),
            )),
        Image.asset(
          "assets/images/profile.png",
          width: 65,
        )
      ],
    );
  }
}

Widget monthRow() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: Row(
            children: [
              Icon(
                CupertinoIcons.left_chevron,
                color: Colors.black,
              ),
              Text(
                "Mar",
                style: TextStyle(color: Colors.black),
              )
            ],
          ),
        ),
        Text(
          "April",
          style: AppTextStyles.bigWeek,
        ),
        TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  "May",
                  style: TextStyle(color: Colors.black),
                ),
                Icon(
                  CupertinoIcons.right_chevron,
                  color: Colors.black,
                ),
              ],
            )),
      ],
    ),
  );
}

Widget sat4(String yozuv_sana, String yozuv_oy, bool selected) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 45, horizontal: 15),
    decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF6f64ea)),
        color: selected == true ? Color(0xFF6f64ea) : Colors.white,
        borderRadius: BorderRadius.circular(80)),
    child: Column(
      children: [
        Text(
          yozuv_sana,
          style: selected != true
              ? AppTextStyles.bigWeek
              : AppTextStyles.bigWeek.copyWith(color: Colors.white, shadows: [
                  BoxShadow(
                      offset: Offset.zero, blurRadius: 3, color: Colors.white)
                ]),
        ),
        Text(
          yozuv_oy,
          style: selected != true
              ? AppTextStyles.littleWeek
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w500)
              : AppTextStyles.littleWeek
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ],
    ),
  );
}

Widget generalSat() {
  return Container(
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        sat4("4", "Sat", false),
        sat4("5", "Sun", true),
        sat4("6", "Mon", false),
        sat4("7", "Tue", false)
      ],
    ),
  );
}

Widget ongoing() {
  return Row(
    children: [
      Text(
        "Ongoing",
        style: AppTextStyles.bigWeek,
      )
    ],
  );
}

Widget box1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      //! first
      Column(
        children: [
          Container(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "9AM",
                  style: AppTextStyles.littleWeek,
                ),
                Text(
                  "10AM",
                  style: AppTextStyles.littleWeek,
                )
              ],
            ),
          )
        ],
      ),

      //!second
      Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: Color(0xFFFFB865), borderRadius: BorderRadius.circular(17)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Information Architechture",
              style: AppTextStyles.bigWeek
                  .copyWith(fontSize: 18, color: Colors.white),
            ),
            Text(
              "Saber a Ora",
              style: AppTextStyles.littleWeek.copyWith(color: Colors.white),
            ),
            space(4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/profile4.png",
                      width: 30,
                    ),
                    Image.asset(
                      "assets/images/profile5.png",
                      width: 30,
                    ),
                  ],
                ),
                SizedBox(
                  width: 35,
                ),
                Text("9.00 AM - 10.00 AM",
                    style: AppTextStyles.littleWeek.copyWith(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600))
              ],
            )
          ],
        ),
      )
    ],
  );
}

Widget box2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      //! first
      Column(
        children: [
          Container(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "11AM",
                  style: AppTextStyles.littleWeek,
                ),
                Text(
                  "12PM",
                  style: AppTextStyles.littleWeek,
                )
              ],
            ),
          )
        ],
      ),

      //!second
      Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: Color(0xFF77D8F3), borderRadius: BorderRadius.circular(17)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Software Testing",
              style: AppTextStyles.bigWeek
                  .copyWith(fontSize: 18, color: Colors.white),
            ),
            Text(
              "Saber a Ora",
              style: AppTextStyles.littleWeek.copyWith(color: Colors.white),
            ),
            space(4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/profile4.png",
                      width: 30,
                    ),
                    Image.asset(
                      "assets/images/profile5.png",
                      width: 30,
                    ),
                  ],
                ),
                SizedBox(
                  width: 35,
                ),
                Text("11.00AM - 12.00 PM",
                    style: AppTextStyles.littleWeek.copyWith(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600))
              ],
            )
          ],
        ),
      )
    ],
  );
}

Widget box3() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      //! first
      Column(
        children: [
          Container(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "12PM",
                  style: AppTextStyles.littleWeek,
                ),
                Text(
                  "1PM",
                  style: AppTextStyles.littleWeek,
                )
              ],
            ),
          )
        ],
      ),

      //!second
      Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: Color(0xFFFE6592), borderRadius: BorderRadius.circular(17)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mobile App Design",
              style: AppTextStyles.bigWeek
                  .copyWith(fontSize: 18, color: Colors.white),
            ),
            Text(
              "Saber a Ora",
              style: AppTextStyles.littleWeek.copyWith(color: Colors.white),
            ),
            space(4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/profile4.png",
                      width: 30,
                    ),
                    Image.asset(
                      "assets/images/profile5.png",
                      width: 30,
                    ),
                  ],
                ),
                SizedBox(
                  width: 35,
                ),
                Text("9.00 AM - 10.00 AM",
                    style: AppTextStyles.littleWeek.copyWith(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600))
              ],
            )
          ],
        ),
      )
    ],
  );
}

Widget line() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "10AM",
        style: AppTextStyles.littleWeek,
      ),
      Row(
        children: [
          Icon(
            Icons.circle,
            color: Color(0xFF6f64ea),
            size: 20,
          ),
          Container(
            width: 300,
            height: 2,
            decoration: BoxDecoration(color: Color(0xFF6f64ea)),
          ),
        ],
      )
    ],
  );
}

Widget pageSkipepr() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        width: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 30,
              height: 5,
              decoration: BoxDecoration(
                  color: Color(0xFF6f64ea),
                  borderRadius: BorderRadius.circular(20)),
            ),
            Icon(
              Icons.circle,
              color: Color(0xFFC7C3F8),
              size: 9,
            ),
            Icon(
              Icons.circle,
              color: Color(0xFFC7C3F8),
              size: 9,
            )
          ],
        ),
      )
    ],
  );
}

Widget welcomingText() {
  return Column(
    children: [
      Text(
        "Building Better",
        style: AppTextStyles.bigWeek.copyWith(fontSize: 30),
      ),
      Text(
        "Workplaces",
        style: AppTextStyles.bigWeek.copyWith(fontSize: 30),
      )
    ],
  );
}

Widget welcomingText2() {
  return Column(
    children: [
      Text(
        "Create a unique emotional story that",
        style: AppTextStyles.littleWeek.copyWith(fontWeight: FontWeight.w600),
      ),
      Text(
        "describes better than words",
        style: AppTextStyles.littleWeek.copyWith(fontWeight: FontWeight.w600),
      )
    ],
  );
}
