import 'package:application/classes/recipe_favorite_list.dart';
import 'package:application/classes/smoothies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecipeScreen extends StatefulWidget {
  int? index;

  RecipeScreen([this.index]);

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  void toggleFavorite() {
    setState(() {
      Smoothies.smoothiesDataList[widget.index!].isFavourite !=
          Smoothies.smoothiesDataList[widget.index!].isFavourite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        RecipeList.favouritesDataList.isNotEmpty
            ? Container(
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Smoothies
                            .smoothiesDataList[widget.index!].mainImage))),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
                    IconButton(
                        onPressed: () {},
                        icon:
                            //  ? Icon(Icons.favorite)
                            Icon(Icons.favorite_border_outlined))
                  ],
                ),
              )
            : Container(
                child: Text('there is nothing to see!'),
              )
      ]),
    );
  }
}
