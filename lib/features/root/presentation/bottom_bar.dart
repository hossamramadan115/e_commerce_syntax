import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commerce_app/constsnt.dart';
import 'package:e_commerce_app/features/categories/presentation/views/categories_page.dart';
import 'package:e_commerce_app/features/home/presentation/views/home_page.dart';
import 'package:e_commerce_app/features/profile/presentation/views/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selected = 0;

  final List<Widget> pageList = [
    HomePage(),
    CategoriesPage(),
    CategoriesPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final navBarHeight = screenHeight * 0.08;
    final iconSize = screenWidth * 0.08;

    return SafeArea(
      top: false,
      bottom: true,
      left: false,
      right: false,
      child: Scaffold(
        extendBody: true,
        body: pageList[selected],
        bottomNavigationBar: CurvedNavigationBar(
          index: selected,
          height: navBarHeight,
          backgroundColor: kPrimaryColor,
          color: kMostUseColor,
          animationDuration: const Duration(milliseconds: 300),
          onTap: (index) {
            setState(() {
              selected = index;
            });
          },
          items: [
            Icon(Icons.home, size: iconSize, color: Colors.white),
            Icon(IconsaxPlusBold.box, size: iconSize, color: Colors.white),
            Icon(Icons.shopping_bag, size: iconSize, color: Colors.white),
            Icon(Icons.person, size: iconSize, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
