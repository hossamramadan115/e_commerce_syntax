import 'package:flutter/material.dart';
import 'package:e_commerce_app/features/home/presentation/views/widgets/custom_category_tile.dart';

class CategoriesList extends StatelessWidget {
  final List<String> categories;
  final List<String> categoryName;
  final double screenHeight;

  const CategoriesList({
    super.key,
    required this.categories,
    required this.categoryName,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight * 0.15,
      child: ListView.builder(
        itemCount: categories.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomCategoryTile(
            image: categories[index],
            name: categoryName[index],
          );
        },
      ),
    );
  }
}
