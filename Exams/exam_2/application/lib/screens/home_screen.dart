import 'package:application/classes/recipe_favorite_list.dart';
import 'package:application/classes/smoothies.dart';
import 'package:application/screens/explore.dart';
import 'package:application/screens/favorite.dart';
import 'package:application/screens/func_home_screen.dart';
import 'package:application/screens/search_screen.dart';
import 'package:flutter/material.dart';

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

  void toggleBottomIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List screenList = [
      homeScreen(toggleFavourite, _currentIndex, toggleBottomIndex, context),
      const SearchScreen(),
      ExploreScreen(
          currentIndex: _currentIndex,
          toggleBottomIndex: toggleBottomIndex,
          toggleFavourite: toggleFavourite),
      FavoriteScreen(
          currentIndex: _currentIndex,
          toggleBottomIndex: toggleBottomIndex,
          toggleFavourite: toggleFavourite)
    ];
    return screenList[_currentIndex];
  }
}
