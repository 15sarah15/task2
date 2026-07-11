import 'package:flutter/material.dart';
import 'package:flutter_task2/Core/App_Text_Style.dart';
import 'package:flutter_task2/Feature/Views/home_screen.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      margin: EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        color: categories[index]['color'] as Color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 8,
            right: 8,
            left: 8,
            child: Text(
              categories[index]['title'] as String,
              style: AppTextStyle.title(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
