import 'package:application/classes/ingredients.dart';
import 'package:application/classes/recipe_favorite_list.dart';
import 'package:application/classes/smoothies.dart';
import 'package:application/utils/extensions/general_extensions.dart';
import 'package:application/utils/tools/general_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecipeScreen extends StatefulWidget {
  int index;
  // final toggleFavourite;

  RecipeScreen({
    required this.index,
  });

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  String nextList = "assets/images/next.png";
  int nextCount = 0;
  bool dot1 = true;
  bool dot2 = false;

  void toggleNextImage() {
    setState(() {
      dot1 = !dot1;
      dot2 = !dot2;
    });
  }

  void toggleCheck(Ingredients element) {
    setState(() {
      element.isChecked = !element.isChecked;
    });
  }

  void toggleFavourite(int index) {
    setState(() {
      for (var element in Smoothies.smoothiesDataList) {
        if (element.index == index) {
          element.isFavourite = !element.isFavourite;

          if (element.isFavourite) {
            RecipeList.favouritesDataList.add(RecipeList(
                mainImage: element.mainImage,
                index: element.index,
                isFavourite: element.isFavourite,
                smallPro: element.smallPro,
                accountName: element.accountName,
                highName: element.highName));
          } else {
            RecipeList.favouritesDataList
                .removeWhere((item) => item.index == index);
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212832),
      body: Column(children: [
        Expanded(
          flex: 3,
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(dot1
                        ? Smoothies.smoothiesDataList[widget.index].mainImage
                        : nextList),
                    fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 50, left: 15, right: 15, bottom: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const CircleAvatar(
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                            ),
                          )),
                      IconButton(
                          onPressed: () {
                            toggleFavourite(widget.index);
                          },
                          icon: Smoothies
                                  .smoothiesDataList[widget.index].isFavourite
                              ? const CircleAvatar(
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                )
                              : const CircleAvatar(
                                  child: Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.black,
                                  ),
                                ))
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      toggleNextImage();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            toggleNextImage();
                          },
                          child: Icon(
                            Icons.circle,
                            color:
                                dot1 ? const Color(0xFF9372F1) : Colors.white,
                          ),
                        ),
                        5.width(),
                        InkWell(
                          onTap: () {
                            toggleNextImage();
                          },
                          child: Icon(
                            Icons.circle_rounded,
                            color:
                                dot2 ? const Color(0xFF9372F1) : Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        child: Image.asset(
                            Smoothies.smoothiesDataList[widget.index].smallPro),
                      ),
                      8.width(),
                      Text(
                        Smoothies.smoothiesDataList[widget.index].accountName,
                        style: Tools.solidStyle
                            .copyWith(fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  17.height(),
                  Text(
                    Smoothies.smoothiesDataList[widget.index].highName,
                    style: Tools.boldStyle,
                  ),
                  10.height(),
                  Row(
                    children: [
                      const Icon(
                        Icons.star_rounded,
                        color: Color(0xFFFFC529),
                        size: 30,
                      ),
                      Text(
                        "4.5",
                        style: TextStyle(color: Colors.white, fontSize: 19.sp),
                      ),
                      4.width(),
                      Text(
                        "(2+)",
                        style: TextStyle(color: Colors.grey, fontSize: 19.sp),
                      ),
                      7.width(),
                      Text(
                        "See reviews",
                        style: TextStyle(
                            fontSize: 17.sp,
                            color: const Color(0xFF9372F1),
                            decoration: TextDecoration.underline,
                            decorationColor: const Color(0xFF9372F1)),
                      )
                    ],
                  ),
                  20.height(),
                  Text(
                    "Ingredients",
                    style: Tools.boldStyle.copyWith(fontSize: 23.sp),
                  ),
                  Column(
                    children: [
                      ...List.generate(Ingredients.ingredientsList.length,
                          (index) {
                        return Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  toggleCheck(
                                      Ingredients.ingredientsList[index]);
                                },
                                icon: Icon(
                                  Ingredients.ingredientsList[index].isChecked
                                      ? Icons.check_box_rounded
                                      : Icons.check_box_outline_blank,
                                  color: const Color(0xFF9372F1),
                                )),
                            Text(
                              Ingredients.ingredientsList[index].title,
                              style: Tools.solidStyle,
                            )
                          ],
                        );
                      })
                    ],
                  ),
                  7.height(),
                  Text(
                    "Methods",
                    style: Tools.boldStyle.copyWith(fontSize: 23.sp),
                  ),
                  5.height(),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Step 1",
                          style: Tools.solidStyle.copyWith(fontSize: 20.sp),
                        ),
                        Text(
                          """Lorem ipsum dolor sit amet, consectetur
adipiscing elit, sed do eiusmod tempor
incididunt ut labore et dolore magna aliqua
labore et dolore magna aliqua""",
                          style: Tools.solidStyle
                              .copyWith(color: Colors.grey.shade300),
                        ),
                        10.height(),
                        Text(
                          "Step 2",
                          style: Tools.solidStyle.copyWith(fontSize: 20.sp),
                        ),
                        Text(
                          """Lorem ipsum dolor sit amet, consectetur
adipiscing elit, sed do eiusmod tempor
incididunt ut labore et dolore magna aliqua
labore et dolore magna aliqua""",
                          style: Tools.solidStyle
                              .copyWith(color: Colors.grey.shade300),
                        ),
                        10.height()
                      ],
                    ),
                  ))
                ],
              ),
            ))
      ]),
    );
  }
}
