import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Tools {
  static final boldStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: Colors.white, fontWeight: FontWeight.w700, fontSize: 28.w),
  );

  static final solidStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
        color: Colors.white, fontWeight: FontWeight.w400, fontSize: 16.sp),
  );

  static final List liveRowList = [
    {
      'image': Image.asset("assets/images/pro1.png", height: 50.sp),
      'text': Text("Fergus",
          style: Tools.solidStyle.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 11.sp,
          )),
    },
    {
      'image': Image.asset("assets/images/pro2.png", height: 50.sp),
      'text': Text("Tom",
          style: Tools.solidStyle
              .copyWith(fontWeight: FontWeight.w500, fontSize: 11.sp))
    },
    {
      'image': Image.asset("assets/images/pro3.png", height: 50.sp),
      'text': Text("Philbert",
          style: Tools.solidStyle
              .copyWith(fontWeight: FontWeight.w500, fontSize: 11.sp))
    },
    {
      'image': Image.asset("assets/images/pro4.png", height: 50.sp),
      'text': Text("Naomi",
          style: Tools.solidStyle
              .copyWith(fontWeight: FontWeight.w500, fontSize: 11.sp))
    },
    {
      'image': Image.asset("assets/images/pro5.png", height: 50.sp),
      'text': Text("Misty",
          style: Tools.solidStyle
              .copyWith(fontWeight: FontWeight.w500, fontSize: 11.sp))
    },
    {
      'image': Image.asset("assets/images/pro6.png", height: 50.sp),
      'text': Text("Samantha",
          style: Tools.solidStyle
              .copyWith(fontWeight: FontWeight.w500, fontSize: 11.sp))
    }
  ];

}
