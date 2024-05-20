import 'package:application/utils/extensions/extensions_general.dart';
import 'package:application/utils/tools/general_tools.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget search() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15),
        ),
        width: 290,
        child: Row(
          children: [
            Icon(
              CupertinoIcons.search,
              color: Colors.green,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Search fresh groceries",
              style: TextStyle(color: Colors.grey.shade400),
            )
          ],
        ),
      ),
      Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15),
          ),
          child: SvgPicture.string(
              """<svg width="25" height="25" viewBox="0 0 25 25" fill="none" xmlns="http://www.w3.org/2000/svg">
<path d="M21.5625 6.25016H18.6075C18.4077 5.61584 18.0109 5.06174 17.4746 4.6684C16.9384 4.27507 16.2907 4.06299 15.6256 4.06299C14.9606 4.06299 14.3129 4.27507 13.7766 4.6684C13.2404 5.06174 12.8435 5.61584 12.6437 6.25016H3.4375C3.18886 6.25016 2.9504 6.34894 2.77459 6.52475C2.59877 6.70057 2.5 6.93902 2.5 7.18766C2.5 7.4363 2.59877 7.67476 2.77459 7.85058C2.9504 8.02639 3.18886 8.12516 3.4375 8.12516H12.6425C12.8423 8.75949 13.2391 9.31359 13.7754 9.70692C14.3116 10.1003 14.9593 10.3123 15.6244 10.3123C16.2894 10.3123 16.9371 10.1003 17.4734 9.70692C18.0096 9.31359 18.4065 8.75949 18.6063 8.12516H21.5625C21.8111 8.12516 22.0496 8.02639 22.2254 7.85058C22.4012 7.67476 22.5 7.4363 22.5 7.18766C22.5 6.93902 22.4012 6.70057 22.2254 6.52475C22.0496 6.34894 21.8111 6.25016 21.5625 6.25016Z" fill="#194B38"/>
<path d="M3.4375 16.8752C3.18886 16.8752 2.9504 16.974 2.77459 17.1498C2.59877 17.3256 2.5 17.5641 2.5 17.8127C2.5 18.0613 2.59877 18.2998 2.77459 18.4756C2.9504 18.6514 3.18886 18.7502 3.4375 18.7502H6.3925C6.59195 19.385 6.98874 19.9396 7.52515 20.3333C8.06156 20.7271 8.7096 20.9394 9.375 20.9394C10.0404 20.9394 10.6884 20.7271 11.2248 20.3333C11.7613 19.9396 12.158 19.385 12.3575 18.7502H21.5625C21.8111 18.7502 22.0496 18.6514 22.2254 18.4756C22.4012 18.2998 22.5 18.0613 22.5 17.8127C22.5 17.5641 22.4012 17.3256 22.2254 17.1498C22.0496 16.974 21.8111 16.8752 21.5625 16.8752H12.3575C12.158 16.2404 11.7613 15.6858 11.2248 15.2921C10.6884 14.8983 10.0404 14.686 9.375 14.686C8.7096 14.686 8.06156 14.8983 7.52515 15.2921C6.98874 15.6858 6.59195 16.2404 6.3925 16.8752H3.4375Z" fill="#194B38"/>
</svg>
"""))
    ],
  );
}

Widget productOne(ProductOne, bool jumpToSecond) {
  return Container(
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
        color: ProductOne.FruitColor, borderRadius: BorderRadius.circular(20)),
    child: Column(
      children: [
        Image.asset(ProductOne.FruitImage),
        Row(
          mainAxisAlignment:
              jumpToSecond ? MainAxisAlignment.start : MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.height(),
                    Text(
                      ProductOne.FruitTitle,
                      style: Tools.boldStyle,
                    ),
                    Text(
                      ProductOne.FruitSubtitle,
                      style: Tools.solidStyle,
                    ),
                  ],
                )
              ],
            )
          ],
        )
      ],
    ),
  );
}