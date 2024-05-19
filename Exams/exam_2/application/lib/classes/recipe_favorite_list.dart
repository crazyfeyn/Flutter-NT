import 'package:application/classes/smoothies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeList {
  int index;
  String mainImage;
  bool isFavourite;
  String smallPro;
  String accountName;
  String highName;
  static final List<RecipeList> favouritesDataList = [];

  RecipeList({
    required this.index,
    required this.mainImage,
    required this.isFavourite,
    required this.smallPro,
    required this.accountName,
    required this.highName,
  });
}
