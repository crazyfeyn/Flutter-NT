import 'dart:collection';

import 'package:application/utils/utils.dart';
import 'package:application/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MediaQuery.of(context).size.width > 800
            ? desktopAppBar()
            : mobileAppBar(),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      20.height(),
                      saveUpText(context),
                      15.height(),
                      SizedBox(
                        width: 370.sp,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            manageTeamText1(),
                            10.height(),
                            manageTeamText2(),
                            20.height(),
                            manageTeam(context)
                          ],
                        ),
                      ),
                      Image.asset("assets/images/chart.png"),
                      20.height(),
                      GoogleWithEverything(),
                      80.height(),
                      surveyYourTeamCol(context),
                      50.height(),
                      "Make your work easier".boldStyle(),
                      30.height(),
                      teamSurveyResponsive(context),
                      80.height(),
                      weWorkResponsive(context),
                      whyCusText(),
                      40.height(),
                      csGoogleResponsive(context),
                      20.height(),
                      playM(context),
                      20.height(),
                      last(context)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
