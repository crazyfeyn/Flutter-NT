import 'package:flutter/material.dart';
import 'package:flutter_application/utils/extensions/extensions.dart';
import 'package:flutter_application/utils/widgets/widgets_general.dart';

class Page_last extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFFFBF0E1),
        child: Column(
          children: [
            60.height(),
            SizedBox(
              height: 863,
              child: Stack(
                children: [
                  secondOne(context),
                  Positioned(
                      left: 0,
                      right: 0,
                      top: 170,
                      bottom: 0,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.white),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            rich2(),
                            barg(context),
                            SizedBox(
                              width: 320,
                              child: Divider(
                                color: Colors.grey.shade300,
                              ),
                            ),
                            barg(context),
                            SizedBox(
                              width: 320,
                              child: Divider(
                                color: Colors.grey.shade300,
                              ),
                            ),
                            barg2(context),
                            SizedBox(
                              width: 320,
                              child: Divider(
                                color: Colors.grey.shade300,
                              ),
                            ),
                            20.height(),
                            rich3(),
                            30.height(),
                            Container(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    scrollDog(context),
                                    10.width(),
                                    scrollDog(context),
                                    10.width(),
                                    scrollDog(context),
                                    10.width(),
                                    scrollDog(context),
                                    10.width(),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
