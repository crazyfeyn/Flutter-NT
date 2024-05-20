import 'package:application/classes/recipe_favorite_list.dart';
import 'package:application/classes/smoothies.dart';
import 'package:application/screens/recipe_screen.dart';
import 'package:application/utils/extensions/general_extensions.dart';
import 'package:application/utils/tools/general_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteScreen extends StatefulWidget {
  final int currentIndex;
  final toggleBottomIndex;
  final toggleFavourite;

  const FavoriteScreen(
      {required this.currentIndex,
      required this.toggleBottomIndex,
      required this.toggleFavourite,
      super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  // final PageController pageController = PageController();

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

  @override
  Widget build(BuildContext context) {
    List<Widget> articleList = [recipeSec(), articleSec()];
    return Scaffold(
      backgroundColor: const Color(0xFF212832),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 80.sp, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your favorites",
              style: Tools.boldStyle.copyWith(fontSize: 24),
            ),
            10.height(),
            Row(
              children: [
                InkWell(
                  onTap: () => toggleChoice(),
                  child: Text(
                    "Recipes",
                    style: recipe
                        ? Tools.boldStyle.copyWith(
                            fontSize: 20,
                            color: const Color(0xFF9372F1),
                            decoration: TextDecoration.underline,
                            decorationColor: const Color(0xFF9372F1),
                            decorationThickness: 2.5.sp)
                        : Tools.boldStyle.copyWith(fontSize: 20),
                  ),
                ),
                10.width(),
                InkWell(
                  onTap: () => toggleChoice(),
                  child: Text("Articles",
                      style: article
                          ? Tools.boldStyle.copyWith(
                              fontSize: 20,
                              color: const Color(0xFF9372F1),
                              decoration: TextDecoration.underline,
                              decorationColor: const Color(0xFF9372F1),
                              decorationThickness: 2.5.sp)
                          : Tools.boldStyle.copyWith(fontSize: 20)),
                ),
              ],
            ),
            Expanded(child: articleList[curIndex])
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

  Widget recipeSec() {
    return Expanded(
        child: Column(
      children: [
        30.height(),
        ...List.generate(RecipeList.favouritesDataList.length, (index) {
          return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (ctx) => RecipeScreen(
                        index: Smoothies.smoothiesDataList[index].index))),
            child: Container(
              margin: EdgeInsets.only(bottom: 23.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    width: 180,
                    height: 110,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              RecipeList.favouritesDataList[index].mainImage),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(9),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              widget.toggleFavourite(
                                  RecipeList.favouritesDataList[index].index);
                            },
                            child: CircleAvatar(
                              radius: 14,
                              child: Icon(
                                RecipeList.favouritesDataList[index].isFavourite
                                    ? Icons.favorite_rounded
                                    : Icons.favorite_border_outlined,
                                color: Colors.red,
                                size: 20,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 170.sp,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            RecipeList.favouritesDataList[index].highName,
                            style: Tools.solidStyle.copyWith(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          ),
                          Text(
                            RecipeList.favouritesDataList[index].accountName,
                            style: Tools.solidStyle
                                .copyWith(color: Colors.grey.shade200),
                          )
                        ],
                      )),
                ],
              ),
            ),
          );
        })
      ],
    ));
  }

  Widget articleSec() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 0.75,
      ),
      itemCount: RecipeList.favouritesDataList.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (ctx) => RecipeScreen(
                      index: Smoothies.smoothiesDataList[index].index))),
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage(RecipeList.favouritesDataList[index].mainImage),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          widget.toggleFavourite(
                              RecipeList.favouritesDataList[index].index);
                        },
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.white,
                          child: Icon(
                            RecipeList.favouritesDataList[index].isFavourite
                                ? Icons.favorite_rounded
                                : Icons.favorite_border_outlined,
                            color: Colors.red,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        RecipeList.favouritesDataList[index].highName,
                        style: Tools.solidStyle.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        RecipeList.favouritesDataList[index].accountName,
                        style: Tools.solidStyle.copyWith(
                          color: Colors.grey.shade200,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
