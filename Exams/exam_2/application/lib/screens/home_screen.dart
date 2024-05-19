import 'package:application/classes/recipe_favorite_list.dart';
import 'package:application/classes/smoothies.dart';
import 'package:application/functions/assistants.dart';
import 'package:application/screens/real_home_screen.dart';
import 'package:application/screens/recipe_screen.dart';
import 'package:application/utils/extensions/general_extensions.dart';
import 'package:application/utils/tools/general_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void toggleFavourite(int index) {
    setState(() {
      Smoothies.smoothiesDataList.forEach((element) {
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
      });
    });
  }

  void toggleBottomIndex(int index) {
    _currentIndex = index;
    setState(() {});
  }

  late List screenList = [
    homeScreen(toggleFavourite, _currentIndex, toggleBottomIndex),
  ];

  @override
  Widget build(BuildContext context) {
    return screenList[_currentIndex];
  }
}
