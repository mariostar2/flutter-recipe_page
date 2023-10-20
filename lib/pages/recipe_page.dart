import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_flatter/componets/recipe_list_item.dart';
import 'package:recipe_flatter/componets/recipe_menu.dart';
import 'package:recipe_flatter/componets/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _bulidRecipeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          //주축 방향 : 세로(가로???)
          children:[
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffee","Made Coffee"),
            RecipeListItem("burger","Made Burger"),
            RecipeListItem("pizza","Made Pizza"),
          ],
        ),
      ),
    );
  }
}
//함수만들어보기
AppBar _bulidRecipeAppBar(){
  return AppBar(
    backgroundColor: Colors.white,  //appbar 배경색 지정
    elevation: 1.0,
    actions: [
      Icon(CupertinoIcons.search, color: Colors.black),
      SizedBox(width: 15),
      Icon(CupertinoIcons.heart, color: Colors.red),
      SizedBox(width: 15),
    ],
  );
}
