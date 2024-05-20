import 'package:application/utils/extensions/general_extensions.dart';
import 'package:application/utils/tools/general_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

Widget bigButton(String text, Function nextScreen,
    [GlobalKey<FormState>? formKey]) {
  return InkWell(
    onTap: () {
      if (formKey != null && formKey.currentState!.validate()) {
        formKey.currentState!.save();
        nextScreen();
      }
    },
    child: Container(
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: const Color(0xFF9372F1), borderRadius: BorderRadius.circular(10.sp)),
      padding: const EdgeInsets.all(17),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16.sp),
      ),
    ),
  );
}

Widget nextButton(buttonText, Function increaseListIndex) {
  return InkWell(
    onTap: () {
      increaseListIndex();
    },
    child: Container(
      width: 373.sp,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: const Color(0xFF9372F1), borderRadius: BorderRadius.circular(10.sp)),
      padding: const EdgeInsets.all(17),
      child: Text(
        buttonText,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16.sp),
      ),
    ),
  );
}

AppBar topBar() {
  return AppBar(
    backgroundColor: const Color(0xFF212832),
    leadingWidth: 170.sp,
    leading: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        10.width(),
        Image.asset("assets/images/profile.png"),
        Text(
          "Hello Henry",
          style: Tools.solidStyle.copyWith(fontWeight: FontWeight.w600),
        )
      ],
    ),
    actions: [
      Stack(
        children: [
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              "assets/icons/notification.svg",
              height: 35,
            ),
          ),
          const Positioned(
              child: Icon(
            Icons.circle,
            color: Color(0xFF9772FF),
            size: 13,
          ))
        ],
      )
    ],
  );
}

Widget liveRow() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      for (int i = 0; i < Tools.liveRowList.length; i++)
        Column(
          children: [
            Tools.liveRowList[i]['image'],
            Tools.liveRowList[i]['text']
          ],
        )
    ],
  );
}

Widget topExpanded() {
  return Expanded(
      flex: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: 330.sp,
            child: Text(
              "What Would You Like To Taste Today?",
              style: Tools.boldStyle,
            ),
          ),
          Text(
            "Live broadcasts",
            style: Tools.solidStyle,
          ),
          liveRow(),
          15.height(),
          Text(
            "Smoothies for you",
            style: Tools.boldStyle,
          )
        ],
      ));
}

Widget searchButtons() {
  List<String> lst = [
    "Healthy",
    "Brunch",
    "Orange",
    "Fresh",
    "Tasty",
    "strawberry"
  ];
  return SizedBox(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Wrap(
          spacing: 12.sp,
          runSpacing: 20.sp,
          children: [
            for (int i = 0; i < lst.length; i++)
              InkWell(
                onTap: () {},
                child: Container(
                  width: 120,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF2C2F45)),
                  child: Text(
                    lst[i],
                    style: Tools.solidStyle.copyWith(color: const Color(0xFF9372F1)),
                  ),
                ),
              )
          ],
        ),
      ],
    ),
  );
}
