import 'package:application/classes/users.dart';
import 'package:application/screens/profile_screen.dart';
import 'package:application/utils/tools/general_tools.dart';
import 'package:flutter/material.dart';

import 'package:application/utils/extensions/general_extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExploreScreen extends StatefulWidget {
  final int currentIndex;
  final toggleBottomIndex;
  final toggleFavourite;

  const ExploreScreen(
      {required this.currentIndex,
      required this.toggleBottomIndex,
      required this.toggleFavourite,
      super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  bool recipe = true;
  bool article = false;
  int curIndex = 0;

  void toggleChoice() {
    setState(() {
      recipe = !recipe;
      article = !article;
      curIndex = curIndex == 0 ? 1 : 0;
    });
  }

  void toggleFollow(value) {
    setState(() {
      value = !value;
    });
  }

  @override
  Widget build(BuildContext context) {
    List userList = ['Users', 'Recipes', 'Recommodations', 'Articles'];

    return Scaffold(
      backgroundColor: const Color(0xFF212832),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
        child: Column(
          children: [
            Expanded(
                child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  for (int i = 0; i < 4; i++)
                    Container(
                      margin: const EdgeInsets.only(right: 5),
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 30),
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xFF9372F1)),
                          color: i == 0
                              ? const Color(0xFF9372F1)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(30)),
                      child: Text(
                        userList[i],
                        style: Tools.solidStyle,
                      ),
                    )
                ],
              ),
            )),
            Expanded(
                flex: 8,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      for (int i = 0; i < Users.userList.length; i++)
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (ctx) => ProfileScreen(
                                        name: Users.userList[i].name,
                                        followers: Users.userList[i].followers,
                                        profileImage:
                                            Users.userList[i].profileImage,
                                        isFollowed:
                                            Users.userList[i].isFollowed, currentIndex: widget.currentIndex, toggleBottomIndex: widget.toggleBottomIndex,)));
                          },
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    child: Image.asset(
                                      Users.userList[i].profileImage,
                                      width: 80,
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(Users.userList[i].name,
                                          style: Tools.solidStyle.copyWith(
                                              fontWeight: FontWeight.w600)),
                                      Text(
                                        "${Users.userList[i].followers} Followers",
                                        style: Tools.solidStyle
                                            .copyWith(fontSize: 13.sp),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        Users.userList[i].isFollowed =
                                            !Users.userList[i].isFollowed;
                                      });
                                    },
                                    child: Container(
                                      width: 160,
                                      height: 45,
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 40),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color(0xFF9372F1)),
                                      child: Text(
                                        Users.userList[i].isFollowed
                                            ? "Followed"
                                            : "Follow",
                                        style: Tools.solidStyle.copyWith(
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 0.9.sw,
                                child: const Divider(
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                              10.height()
                            ],
                          ),
                        )
                    ],
                  ),
                ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: Color(0xFFC4C4C4)),
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
        currentIndex: widget.currentIndex,
        unselectedItemColor: const Color(0xFFC4C4C4),
        selectedItemColor: const Color(0xFF9372F1),
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          widget.toggleBottomIndex(value);
        },
      ),
    );
  }
}
