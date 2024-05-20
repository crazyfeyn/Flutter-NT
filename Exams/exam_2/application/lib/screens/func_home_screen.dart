import 'package:application/classes/smoothies.dart';
import 'package:application/classes/users.dart';
import 'package:application/functions/assistants.dart';
import 'package:application/screens/recipe_screen.dart';
import 'package:application/utils/extensions/general_extensions.dart';
import 'package:application/utils/tools/general_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget homeScreen(
    toggleFavourite, currentIndex, toggleBottomIndex, BuildContext context) {
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => RecipeScreen(
                                          index: i,
                                        )));
                          },
                          child: Column(
                            children: [
                              //1
                              Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
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
                                              onTap: () {
                                                toggleFavourite(Smoothies
                                                    .smoothiesDataList[i]
                                                    .index);
                                              },
                                              child: CircleAvatar(
                                                child: Smoothies
                                                        .smoothiesDataList[i]
                                                        .isFavourite
                                                    ? const Icon(
                                                        Icons.favorite_rounded,
                                                        color: Colors.red,
                                                      )
                                                    : const Icon(
                                                        Icons.favorite_border),
                                              ),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(10),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(17),
                                                  color:
                                                      const Color(0xFF9372F1)),
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
                                margin: const EdgeInsets.only(bottom: 25),
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
        backgroundColor: const Color(0xFF9372F1),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (ctx) {
                return Container(
                  decoration: const BoxDecoration(color: Color(0xFF212832)),
                  padding: const EdgeInsets.all(15),
                  height: 300,
                  child: SingleChildScrollView(
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Reviews",
                              style: Tools.boldStyle,
                            ),
                            7.height(),
                            SizedBox(
                              height: 340,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  for (int i = 0; i < 4; i++)
                                    SizedBox(
                                      width: 350.sp,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SizedBox(
                                            child: Image.asset(
                                              Users.userList[i].profileImage,
                                              width: 70,
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(Users.userList[i].name,
                                                  style: Tools.solidStyle
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.w600)),
                                              Text(
                                                "${Users.userList[i].followers} Followers",
                                                style: Tools.solidStyle
                                                    .copyWith(fontSize: 13.sp),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              for (int i = 0; i < 5; i++)
                                                const Icon(
                                                  Icons.star_rounded,
                                                  color: Color(0xFFFFC529),
                                                )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              });
        },
        // tooltip: 'Increment',

        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(
      selectedLabelStyle:
          const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
      unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w600, fontSize: 14, color: Color(0xFFC4C4C4)),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            label: 'Favourites'),
        BottomNavigationBarItem(icon: Icon(Icons.article), label: 'Articles'),
      ],
      backgroundColor: const Color(0xFF393948),
      currentIndex: currentIndex,
      unselectedItemColor: const Color(0xFFC4C4C4),
      selectedItemColor: const Color(0xFF9372F1),
      iconSize: 30,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        toggleBottomIndex(value);
      },
    ),
  );
}
