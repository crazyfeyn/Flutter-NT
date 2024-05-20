import 'package:flutter/material.dart';

class Ingredients {
  bool isChecked;
  String title;

  Ingredients({required this.isChecked, required this.title});

  static final List<Ingredients> ingredientsList = [
    Ingredients(isChecked: false, title: 'box elbow macaroni'),
    Ingredients(isChecked: false, title: 'cup butter'),
    Ingredients(isChecked: false, title: 'cup all-purpose flour'),
    Ingredients(isChecked: false, title: 'teaspoon salt'),
    Ingredients(isChecked: false, title: 'ground black pepper to taste'),
  ];
}
