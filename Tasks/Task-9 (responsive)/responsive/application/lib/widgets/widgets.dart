import 'package:application/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar desktopAppBar() {
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.all(15),
      child: Text("team.flow",
          style: GoogleFonts.josefinSans(
            fontSize: 24.sp,
            fontWeight: FontWeight.w400,
          )),
    ),
    leadingWidth: 150.sp,
    title: Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //!first
          Row(
            children: [
              Text(
                "How it works",
                style: TextStyle(fontSize: 16.h),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.arrowDown,
                    size: 16.sp,
                  ))
            ],
          ),
          Row(
            children: [
              Text(
                "Product",
                style: TextStyle(fontSize: 16.h),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.arrowDown, size: 16.sp))
            ],
          ),
          Row(
            children: [
              Text(
                "Pricing",
                style: TextStyle(fontSize: 16.h),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.arrowDown, size: 16.sp))
            ],
          ),
          Row(
            children: [
              Text(
                "Recources",
                style: TextStyle(fontSize: 16.h),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.arrowDown,
                    size: 16.sp,
                  ))
            ],
          )
        ],
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                "Log in",
                style: TextStyle(color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple.shade200,
              ),
              child: const Text(
                "Get started free",
                style: TextStyle(color: Colors.deepPurple),
              ),
            ),
          ],
        ),
      )
    ],
  );
}

AppBar mobileAppBar() {
  return AppBar(
      leading: TextButton(
        onPressed: () {},
        child: Row(
          children: [
            Text(
              "team.flow",
              style: GoogleFonts.josefinSans(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ],
        ),
      ),
      leadingWidth: 200.sp,
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.format_list_numbered_rounded,
              size: 28,
            ))
      ]);
}

Widget saveUpText(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color(0xFF81C43B),
            borderRadius: BorderRadius.circular(100)),
        child: const Text(
          "Save 90%",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      if (MediaQuery.of(context).size.width > 800)
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: const Color(0xFFF2F9EB),
              borderRadius: BorderRadius.circular(100)),
          child: const Text(
            "Get account of \$59",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
          ),
        )
    ],
  );
}

Widget manageTeam(BuildContext context) {
  return MediaQuery.of(context).size.width > 800
      ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Text(
                "name@yourcompany.com",
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  color: const Color(0xFF794CFF)),
              child: const Text(
                "Try It free",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        )
      : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: Text(
                "name@yourcompany.com",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey.shade600),
              ),
            ),
            10.height(),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  color: const Color(0xFF794CFF)),
              child: const Text(
                "Try It free",
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
            )
          ],
        );
}

Widget manageTeamText1() {
  return Text(
    "Manage the team everyone wants to be on ",
    style: GoogleFonts.inter(fontSize: 30.sp, fontWeight: FontWeight.w600),
    textAlign: TextAlign.center,
  );
}

Widget manageTeamText2() {
  return const Text(
      "Simple platform that lets you master what great managers do best, as develop trust, collaborate, and drive team performance.",
      textAlign: TextAlign.center);
}

GoogleWithEverything() {
  return Container(
    width: 370.sp,
    child: Column(
      children: [
        10.height(),
        Row(
          children: [
            Image.asset(
              "assets/images/logos.png",
              width: 350,
            )
          ],
        ),
      ],
    ),
  );
}

Widget rowchaSurvey() {
  return Row(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "Survey your team".boldStyle(),
          Text(
            "Powerful questions that get to the heart",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.sp),
          ),
          Text(
            "of how team members really feel.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.sp),
          )
        ],
      )
    ],
  );
}

Widget columnchaSurvey(String yozuvMain, String yozuv1, String yozuv2) {
  return Padding(
    padding: const EdgeInsets.only(left: 18),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        yozuvMain.boldStyle(),
        Text(
          yozuv1,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16.sp),
        ),
        Text(
          yozuv2,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16.sp),
        )
      ],
    ),
  );
}

Widget surveyYourTeamCol(BuildContext context) {
  return MediaQuery.of(context).size.width > 800
      ? SizedBox(
          width: 900.sp,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //!first
              Image.asset(
                "assets/images/timeline.png",
                width: 440.sp,
              ),
              //!second
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      color: const Color(0xFFF6F3FC),
                      padding: const EdgeInsets.all(7),
                      width: 340,
                      child: Row(
                        children: [
                          Container(
                            height: 70,
                            width: 5,
                            color: Colors.purple,
                          ),
                          10.width(),
                          Column(
                            children: [
                              rowchaSurvey(),
                            ],
                          )
                        ],
                      )),
                  20.height(),
                  columnchaSurvey(
                      "Resolve issues quickly",
                      "Anonymous messaging that connects",
                      "managers and employees."),
                  20.height(),
                  columnchaSurvey(
                      "Plan your 1-on-1s",
                      "Plan meetings together and give a stake",
                      "employees and teams."),
                  20.height(),
                  columnchaSurvey(
                      "Track your progress",
                      "Easy-to-read reports and sharable",
                      "results help managers and teams.")
                ],
              ),
            ],
          ),
        )
      : Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //!first
            Image.asset(
              "assets/images/timeline.png",
              width: 440.sp,
            ),
            //!second
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    color: const Color(0xFFF6F3FC),
                    padding: const EdgeInsets.all(7),
                    width: 340,
                    child: Row(
                      children: [
                        Container(
                          height: 70,
                          width: 5,
                          color: Colors.purple,
                        ),
                        10.width(),
                        Column(
                          children: [
                            rowchaSurvey(),
                          ],
                        )
                      ],
                    )),
                20.height(),
                columnchaSurvey(
                    "Resolve issues quickly",
                    "Anonymous messaging that connects",
                    "managers and employees."),
                20.height(),
                columnchaSurvey(
                    "Plan your 1-on-1s",
                    "Plan meetings together and give a stake",
                    "employees and teams."),
                20.height(),
                columnchaSurvey(
                    "Track your progress",
                    "Easy-to-read reports and sharable",
                    "results help managers and teams.")
              ],
            ),
          ],
        );
}

Widget reportCont(image, String textMain1, String text2, bool isMobile) {
  return Container(
    width: 270.sp,
    child: Column(
      crossAxisAlignment:
          isMobile ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          width: 64.sp,
        ),
        10.height(),
        textMain1.boldStyle(),
        Text(
          text2,
          style: TextStyle(fontSize: 14.sp),
        )
      ],
    ),
  );
}

Widget teamSurveyResponsive(BuildContext context) {
  return MediaQuery.of(context).size.width > 800
      ? SizedBox(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  reportCont(
                      "assets/images/img1.png",
                      "Team Surveys & Reports",
                      "Short, anonymous surveys track your team’s needs weekly so you can focus.",
                      false),
                  5.width(),
                  reportCont(
                      "assets/images/img2.png",
                      "Team Surveys & Reports",
                      "Short, anonymous surveys track your team’s needs weekly so you can focus.",
                      false),
                  5.width(),
                  reportCont(
                      "assets/images/img3.png",
                      "Team Surveys & Reports",
                      "Short, anonymous surveys track your team’s needs weekly so you can focus.",
                      false),
                  5.width(),
                ],
              ),
              20.height(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  reportCont(
                      "assets/images/img4.png",
                      "Team Surveys & Reports",
                      "Short, anonymous surveys track your team’s needs weekly so you can focus.",
                      false),
                  5.width(),
                  reportCont(
                      "assets/images/img5.png",
                      "Team Surveys & Reports",
                      "Short, anonymous surveys track your team’s needs weekly so you can focus.",
                      false),
                  5.width(),
                  reportCont(
                      "assets/images/img6.png",
                      "Team Surveys & Reports",
                      "Short, anonymous surveys track your team’s needs weekly so you can focus.",
                      false),
                  5.width(),
                ],
              ),
            ],
          ),
        )
      : Column(
          children: [
            reportCont(
                "assets/images/img1.png",
                "Team Surveys & Reports",
                "Short, anonymous surveys track your team’s needs weekly so you can focus.",
                true),
            reportCont(
                "assets/images/img2.png",
                "Team Surveys & Reports",
                "Short, anonymous surveys track your team’s needs weekly so you can focus.",
                true),
            reportCont(
                "assets/images/img3.png",
                "Team Surveys & Reports",
                "Short, anonymous surveys track your team’s needs weekly so you can focus.",
                true),
            20.height(),
            ExpansionTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 290.sp,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(color: Color(0xFFECE5FF)),
                    child: const Text(
                      "View more benefits",
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
              trailing: const SizedBox.shrink(),
              children: [
                reportCont(
                    "assets/images/img4.png",
                    "Team Surveys & Reports",
                    "Short, anonymous surveys track your team’s needs weekly so you can focus.",
                    true),
                reportCont(
                    "assets/images/img5.png",
                    "Team Surveys & Reports",
                    "Short, anonymous surveys track your team’s needs weekly so you can focus.",
                    true),
                reportCont(
                    "assets/images/img6.png",
                    "Team Surveys & Reports",
                    "Short, anonymous surveys track your team’s needs weekly so you can focus.",
                    true),
              ],
            )
          ],
        );
}

Widget weWorkResponsive(BuildContext context) {
  return MediaQuery.of(context).size.width > 800
      ? SizedBox(
          width: 900.sp,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 220.sp,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 270.sp,
                      child: Column(
                        children: [
                          "We work how you work everyday".boldStyle(),
                        ],
                      ),
                    ),
                    Container(
                      width: 270.sp,
                      child: const Column(
                        children: [
                          Text(
                              "Since the easiest things to use actually get used, we adapts to the way your team works – not the other way around.")
                        ],
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: const Color(0xFF796EFF),
                              borderRadius: BorderRadius.circular(7.sp)),
                          child: const Text(
                            "Get started free",
                            style: TextStyle(color: Colors.white),
                          ),
                        ))
                  ],
                ),
              ),
              10.width(),
              Image.asset(
                "assets/images/hour_chart.png",
                width: 440.sp,
              )
            ],
          ),
        )
      : Column(
          children: [
            Container(
              height: 696.sp,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  10.height(),
                  Image.asset(
                    "assets/images/hour_chart.png",
                    width: 440.sp,
                  ),
                  10.height(),
                  Container(
                    width: 270.sp,
                    child: Column(
                      children: [
                        "We work how you work everyday".boldStyle(),
                      ],
                    ),
                  ),
                  Container(
                    width: 270.sp,
                    child: const Column(
                      children: [
                        Text(
                            "Since the easiest things to use actually get used, we adapts to the way your team works – not the other way around.")
                      ],
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        width: 270.sp,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: const Color(0xFF796EFF),
                            borderRadius: BorderRadius.circular(7.sp)),
                        child: const Text(
                          "Get started free",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                ],
              ),
            ),
          ],
        );
}

Widget whyCusText() {
  return Container(
    width: 300.sp,
    child: Column(
      children: [
        Column(
          children: [
            Text(
              "Why customers love working with us",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16.sp),
            )
          ],
        ),
        10.height(),
        const Column(
          children: [
            Text(
              "“It's amazing what has helped me learn about my team. I don't worry about blindspots anymore, and 1-on-1s have never been more productive. The team loves it.",
              textAlign: TextAlign.center,
            )
          ],
        )
      ],
    ),
  );
}

csGoogleResponsive(BuildContext context) {
  return MediaQuery.of(context).size.width > 800
      ? SizedBox(
          width: 900.sp,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "assets/images/pro1.png",
                    width: 40.sp,
                  ),
                  7.width(),
                  Column(
                    children: [
                      Text(
                        "Jorge Robertson",
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "CS at Google",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "assets/images/pro1.png",
                    width: 40.sp,
                  ),
                  7.width(),
                  Column(
                    children: [
                      Text(
                        "Jorge Robertson",
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "CS at Google",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "assets/images/pro1.png",
                    width: 40.sp,
                  ),
                  7.width(),
                  Column(
                    children: [
                      Text(
                        "Jorge Robertson",
                        style: TextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "CS at Google",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
      : SizedBox(
          width: 200.sp,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                "assets/images/pro1.png",
                width: 40.sp,
              ),
              7.height(),
              Column(
                children: [
                  Text(
                    "Jorge Robertson",
                    style:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "CS at Google",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              )
            ],
          ),
        );
}

Widget playM(BuildContext context) {
  return MediaQuery.of(context).size.width > 800
      ? Container(
          width: double.infinity,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF796EFF),
          ),
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "84% of employees who use",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17.sp,
                        color: Colors.white),
                  ),
                  Text(
                    "trust their direct manager",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17.sp,
                        color: Colors.white),
                  ),
                ],
              ),
              20.height(),
              Image.asset(
                "assets/images/playM.png",
                width: 150.sp,
              ),
              15.height(),
              Image.asset(
                "assets/images/playM2.png",
                width: 150.sp,
              ),
            ],
          )))
      : Container(
          width: double.infinity,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF796EFF),
          ),
          child: Center(
              child: Column(
            children: [
              Column(
                children: [
                  Text(
                    "84% of employees who use",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17.sp,
                        color: Colors.white),
                  ),
                  Text(
                    "trust their direct manager",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 17.sp,
                        color: Colors.white),
                  ),
                ],
              ),
              20.height(),
              Image.asset(
                "assets/images/playM.png",
                width: 150.sp,
              ),
              15.height(),
              Image.asset(
                "assets/images/playM2.png",
                width: 150.sp,
              ),
            ],
          )));
}

Widget last(BuildContext context) {
  return MediaQuery.of(context).size.width > 800
      ? Container(
          width: double.infinity,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF1D2830),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Company",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  5.height(),
                  Text(
                    "About Us",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  5.height(),
                  Text(
                    "Blog",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  5.height(),
                  Text(
                    "Careers",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  5.height(),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Company",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  5.height(),
                  Text(
                    "About Us",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  5.height(),
                  Text(
                    "Blog",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  5.height(),
                  Text(
                    "Careers",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  5.height(),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Company",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  5.height(),
                  Text(
                    "About Us",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  5.height(),
                  Text(
                    "Blog",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  5.height(),
                  Text(
                    "Careers",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  5.height(),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Install app",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  15.height(),
                  Image.asset(
                    "assets/images/playM.png",
                    width: 150.sp,
                  ),
                  15.height(),
                  Image.asset(
                    "assets/images/playM2.png",
                    width: 150.sp,
                  ),
                ],
              )
            ],
          ),
        )
      : Container(
          width: double.infinity,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color(0xFF1D2830),
          ),
          child: Column(
            children: [
              ExpansionTile(
                title: Text(
                  "Company",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                trailing: Icon(
                  Icons.skip_next,
                  color: Colors.white,
                ),
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Company",
                        style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      5.height(),
                      Text(
                        "About Us",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      5.height(),
                      Text(
                        "Blog",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      5.height(),
                      Text(
                        "Careers",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      5.height(),
                    ],
                  )
                ],
              ),
              ExpansionTile(
                title: Text(
                  "Support",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                trailing: Icon(
                  Icons.skip_next,
                  color: Colors.white,
                ),
                children: [
                  Text(
                    "in",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )
                ],
              ),
              ExpansionTile(
                title: Text(
                  "Legal",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                trailing: Icon(
                  Icons.skip_next,
                  color: Colors.white,
                ),
                children: [
                  Text(
                    "in",
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )
                ],
              )
            ],
          ));
}
