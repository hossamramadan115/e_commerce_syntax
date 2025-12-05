import 'package:flutter/material.dart';
import 'all_button.dart';
import 'categories_list.dart';

class CategoriesRow extends StatelessWidget {
  final List<String> categories;
  final List<String> categoryName;
  final double screenHeight;
  final double screenWidth;

  const CategoriesRow({
    super.key,
    required this.categories,
    required this.categoryName,
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AllButton(screenWidth: screenWidth),

        Expanded(
          child: CategoriesList(
            categories: categories,
            categoryName: categoryName,
            screenHeight: screenHeight,
          ),
        ),
      ],
    );
  }
}
