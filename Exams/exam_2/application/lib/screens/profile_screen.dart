import 'package:application/classes/smoothies.dart';
import 'package:application/screens/recipe_screen.dart';
import 'package:application/utils/extensions/general_extensions.dart';
import 'package:application/utils/tools/general_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProfileScreen extends StatefulWidget {
  String name;
  String followers;
  String profileImage;
  bool isFollowed;
  var toggleBottomIndex;
  var currentIndex;

  ProfileScreen(
      {required this.name,
      required this.followers,
      required this.profileImage,
      required this.isFollowed,
      required this.toggleBottomIndex,
      required this.currentIndex,
      super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void toggleBottomIndex(int index) {
    setState(() {
      widget.currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212832),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/proBack.png"),
                            fit: BoxFit.cover)),
                    child: Padding(
                        padding: const EdgeInsets.all(35),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 25,
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: const Icon(
                                        Icons.arrow_back_ios,
                                        size: 30,
                                      )),
                                )
                              ],
                            ),
                          ],
                        ))),
                Positioned(
                    top: 300.sp,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                      ),
                      height: 160.sp,
                      padding: EdgeInsets.symmetric(horizontal: 20.sp),
                      width: 430.sp,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                widget.profileImage,
                                width: 80.sp,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(widget.followers,
                                          style: Tools.solidStyle.copyWith(
                                              fontWeight: FontWeight.w600)),
                                      Text("Followers",
                                          style: Tools.solidStyle
                                              .copyWith(fontSize: 15.sp))
                                    ],
                                  ),
                                  10.width(),
                                  const SizedBox(
                                    height: 30,
                                    child: VerticalDivider(
                                      color: Colors.white,
                                    ),
                                  ),
                                  10.width(),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("1124",
                                          style: Tools.solidStyle.copyWith(
                                              fontWeight: FontWeight.w600)),
                                      Text("Following",
                                          style: Tools.solidStyle
                                              .copyWith(fontSize: 15.sp))
                                    ],
                                  ),
                                  10.width(),
                                  const SizedBox(
                                    height: 30,
                                    child: VerticalDivider(
                                      color: Colors.white,
                                    ),
                                  ),
                                  10.width(),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("9,236",
                                          style: Tools.solidStyle.copyWith(
                                              fontWeight: FontWeight.w600)),
                                      Text("Posts",
                                          style: Tools.solidStyle
                                              .copyWith(fontSize: 15.sp))
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                          Text(widget.name,
                              style: Tools.boldStyle.copyWith(fontSize: 20.sp)),
                          Text(
                            "Welcome to my world :)",
                            style: Tools.solidStyle,
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          ),
          const Expanded(
            flex: 1,
            child: Column(),
          ),
          Expanded(
              flex: 3,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.sp),
                child: Column(
                  children: [
                    10.height(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              widget.isFollowed = !widget.isFollowed;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 0.7.sw,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xFF9372F1)),
                            child: Text(
                              widget.isFollowed ? "Followed" : "Follow",
                              style: Tools.solidStyle.copyWith(
                                  fontWeight: FontWeight.w600, fontSize: 18.sp),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(7.sp),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.transparent,
                                border:
                                    Border.all(color: const Color(0xFF9372F1))),
                            child: SvgPicture.asset(
                              "assets/icons/send.svg",
                              height: 25.sp,
                            ),
                          ),
                        )
                      ],
                    ),
                    5.height(),
                    Expanded(
                        flex: 7,
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10,
                                  childAspectRatio: 1 / 2),
                          itemCount: Smoothies.smoothiesDataList.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (ctx) => RecipeScreen(
                                            index: Smoothies
                                                .smoothiesDataList[index]
                                                .index)));
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 170.sp,
                                      width: 200.sp,
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(Smoothies
                                              .smoothiesDataList[index]
                                              .mainImage),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.5),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              Smoothies.smoothiesDataList[index]
                                                  .highName,
                                              style: Tools.boldStyle
                                                  .copyWith(fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                            );
                          },
                        ))
                  ],
                ),
              ))
        ],
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
          toggleBottomIndex(value);
        },
      ),
    );
  }
}
