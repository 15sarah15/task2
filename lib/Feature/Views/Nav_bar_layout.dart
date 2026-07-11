import 'package:flutter/material.dart';
import 'package:flutter_task2/Feature/Views/NotificationScreen.dart';
import 'package:flutter_task2/Feature/Views/OrdersScreen.dart';
import 'package:flutter_task2/Feature/Views/ProfileScreen.dart';
import 'package:flutter_task2/Feature/Views/home_screen.dart';
import 'package:flutter_task2/Feature/Widgets/custom_bottom_nav_bar.dart';

class NavBarLayout extends StatefulWidget {
  const NavBarLayout({super.key});

  @override
  State<NavBarLayout> createState() => _NavBarLayoutState();
}

class _NavBarLayoutState extends State<NavBarLayout> {
  int currentIndex = 3;

  final List<Widget> screens = [
    ProfileScreen(),
    Notificationscreen(),
    OrdersScreen(),
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
