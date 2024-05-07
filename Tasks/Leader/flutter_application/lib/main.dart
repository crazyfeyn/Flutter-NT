import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/desktop_appbar.dart';
import 'package:flutter_application/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isPhone = MediaQuery.of(context).size.width < 800;
    return ScreenUtilInit(
      designSize: Size(430, 932),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              appBar: isPhone ? Xusanboy() : desktopAppbar(),
              body: Flexible(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: isPhone ? 15 : 30,
                        horizontal: isPhone ? 15 : 100),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border.symmetric(
                                      horizontal: BorderSide(
                                          color: Colors.grey.shade400))),
                              child: isPhone
                                  ? Abdullow()
                                  : SizedBox(
                                      height: 5,
                                    ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        abdullow2(isPhone),
                        SizedBox(
                          height: 20,
                        ),
                        mardon(),
                        SizedBox(
                          height: 20,
                        ),
                        isPhone ? me() : commentRow(context),
                        SizedBox(
                          height: 120,
                        ),
                        Image.asset("assets/images/img2.png"),
                      ],
                    ),
                  ),
                ),
              ),

              //-----
              bottomNavigationBar: isPhone == true
                  ? BottomNavigationBar(items: [
                      BottomNavigationBarItem(
                        icon: Padding(
                          padding: const EdgeInsets.only(right: 35),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              Image.asset(
                                'assets/images/clapping.png',
                                height: 25,
                                width: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "102",
                              )
                            ],
                          ),
                        ),
                        label: '',
                      ),
                      const BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.chat_bubble),
                        label: '',
                      ),
                      const BottomNavigationBarItem(
                        icon: Icon(Icons.bookmark_add_outlined),
                        label: '',
                      ),
                    ])
                  : Text(""))),
    );
  }
}
