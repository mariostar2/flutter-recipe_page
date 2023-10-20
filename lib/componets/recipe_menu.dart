import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround, // 아이콘 정렬 처리
        children: [
          _bulidMenuItem(Icons.food_bank, 'ALL'),
          _bulidMenuItem(Icons.emoji_food_beverage, 'Coffee'),
          _bulidMenuItem(Icons.fastfood, 'Burger'),
          _bulidMenuItem(Icons.local_pizza, 'Pizza'),
        ],
      ),
    );
  }
}

Widget _bulidMenuItem(IconData mIcon, String text){
  return           Container(
    width: 60,
    height: 80,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30),
      border: Border.all(color: Colors.black),  //BoxDecoration
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,  //아이콘이 중앙으로 온다
      children: [
        Icon(
            mIcon,
            color:Colors.red,
        ),
        SizedBox(height: 5),
        Text(text, style: TextStyle(color: Colors.black87),
        )
      ],
    ),
  );
}