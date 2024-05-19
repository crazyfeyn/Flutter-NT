import 'package:application/classes/recipe_favorite_list.dart';
import 'package:application/classes/smoothies.dart';
import 'package:application/functions/assistants.dart';
import 'package:application/screens/recipe_screen.dart';
import 'package:application/utils/extensions/general_extensions.dart';
import 'package:application/utils/tools/general_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget homeScreen(toggleFavourite, currentIndex, toggleBottomIndex) {
  return Scaffold(
    backgroundColor: const Color(0xFF212832),
    appBar: topBar(),
    body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 17),
      child: Column(
        children: [
          topExpanded(),
          Expanded(
              flex: 7,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < Smoothies.smoothiesDataList.length; i++)
                      InkWell(
                          onTap: () {
                            //!
                            // RecipeScreen(
                            //     Smoothies.smoothiesDataList[i].index);
                          },
                          child: Column(
                            children: [
                              //1
                              Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25)),
                                      image: DecorationImage(
                                          image: AssetImage(Smoothies
                                              .smoothiesDataList[i].mainImage),
                                          fit: BoxFit.cover)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            InkWell(
                                              onTap: () => toggleFavourite(
                                                  Smoothies.smoothiesDataList[i]
                                                      .index),
                                              child: CircleAvatar(
                                                child: Smoothies
                                                        .smoothiesDataList[i]
                                                        .isFavourite
                                                    ? Icon(
                                                        Icons.favorite_rounded)
                                                    : Icon(
                                                        Icons.favorite_border),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(17),
                                                  color: Color(0xFF9372F1)),
                                              child: Text(
                                                'Easy',
                                                style: Tools.solidStyle
                                                    .copyWith(fontSize: 14.sp),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                              Container(
                                height: 200,
                                padding: const EdgeInsets.all(20),
                                margin: EdgeInsets.only(bottom: 25),
                                decoration: const BoxDecoration(
                                  color: Color(0xFF393948),
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(26),
                                      bottomRight: Radius.circular(26)),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        //2
                                        Image.asset(Smoothies
                                            .smoothiesDataList[i].smallPro),
                                        10.width(),
                                        //3
                                        Text(
                                          Smoothies
                                              .smoothiesDataList[i].accountName,
                                          style: Tools.solidStyle,
                                        )
                                      ],
                                    ),
                                    17.height(),
                                    //4
                                    Text(
                                      Smoothies.smoothiesDataList[i].highName,
                                      style: Tools.boldStyle
                                          .copyWith(fontSize: 23.sp),
                                    ),
                                    //5
                                    Text(
                                      Smoothies.smoothiesDataList[i].desc,
                                      style: Tools.solidStyle,
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                  ],
                ),
              ))
        ],
      ),
    ),
    floatingActionButton: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      clipBehavior: Clip.hardEdge,
      child: FloatingActionButton(
        backgroundColor: Color(0xFF9372F1),
        onPressed: () {},
        // tooltip: 'Increment',

        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
      unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xFFC4C4C4)),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Explore'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
            ),
            label: 'Favourites'),
        BottomNavigationBarItem(icon: Icon(Icons.article), label: 'Articles'),
      ],
      backgroundColor: Color(0xFF393948),
      currentIndex: currentIndex,
      unselectedItemColor: Color(0xFFC4C4C4),
      selectedItemColor: Color(0xFF9372F1),
      iconSize: 30,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        toggleBottomIndex(value);
      },
    ),
  );
}
