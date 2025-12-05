import 'package:e_commerce_app/constsnt.dart';
import 'package:e_commerce_app/core/utils/media_query_values.dart';
import 'package:e_commerce_app/core/widgets/custom_cart.dart';
import 'package:flutter/material.dart';

class SameCategoriesPage extends StatelessWidget {
  final String categoryName;

  const SameCategoriesPage({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    // مثال لبيانات ثابتة للعرض فقط
    final List<Map<String, String>> dummyProducts = List.generate(6, (index) {
      return {
        "image": "assets/product.jpg",
        "name": "Product $index",
        "price": "\$${(index + 1) * 50}",
        "details": "High quality product",
      };
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: Text(
          categoryName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 20, left: 10, right: 10),
        child: GridView.builder(
          itemCount: dummyProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing:
                context.screenWidth * 0.037,
            mainAxisSpacing: context.screenHeight * 0.02,
            childAspectRatio:
                context.screenWidth / (context.screenHeight * 0.68),
          ),
          itemBuilder: (context, index) {
            // final product = dummyProducts[index];
            return CustomCart();
          },
        ),
      ),
    );
  }
}
