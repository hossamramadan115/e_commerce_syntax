import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomCategoryTile extends StatelessWidget {
  const CustomCategoryTile({
    super.key,
    required this.image,
    required this.name,
  });

  final String image, name;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          "${AppRouter.kSameCategories}/$name",
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05,
          vertical: screenHeight * 0.016,
        ),
        margin: EdgeInsets.only(right: screenWidth * 0.05),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(screenWidth * 0.03),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: screenWidth * 0.12,
              height: screenWidth * 0.12,
              fit: BoxFit.cover,
            ),

            SizedBox(height: screenHeight * 0.01),

            ///  هنا الاسم بدل السهم
            Text(
              name,
              style: TextStyle(
                fontSize: screenWidth * 0.035,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
