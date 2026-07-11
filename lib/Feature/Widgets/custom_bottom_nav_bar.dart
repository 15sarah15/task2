import 'package:flutter/material.dart';
import 'package:flutter_task2/Core/App_Color.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,

      selectedItemColor: AppColor.primaryGR,
      unselectedItemColor: AppColor.colorGray,

      items: [
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "حسابي"),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "الاشعارات",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: "طلباتي",
        ),

        BottomNavigationBarItem(icon: Icon(Icons.home), label: "الرئيسية"),
      ],
    );
  }
}
