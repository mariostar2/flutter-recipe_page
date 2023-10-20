import'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String ImageName;
  final String title;
  // 이미지 경로
  // 타이틀
  const RecipeListItem(this.ImageName, this.title,{super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Image.asset("assets/images/$ImageName.jpeg", fit: BoxFit.cover),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
        Text(
          "햄버거 만드는 방법..................",
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        )
      ],
      ),
    );
  }
}
