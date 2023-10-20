import 'package:flutter/material.dart';
import 'package:recipe_flatter/componets/recipe_title.dart';
import 'package:recipe_flatter/pages/recipe_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp  extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: RecipePage(),
    );
  }
}


