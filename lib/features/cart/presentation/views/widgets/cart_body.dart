import 'package:flutter/material.dart';
import 'cart_item.dart';
import 'package:e_commerce_app/core/utils/media_query_values.dart';

class CartItemsList extends StatelessWidget {
  const CartItemsList({super.key});

  // بيانات المنتجات
  final List<Map<String, String>> products = const [
    {
      'image': 'assets/tv_placeholder.png',
      'name': 'TVs',
      'price': '200 KWD',
    },
    {
      'image': 'assets/tv_placeholder.png',
      'name': 'Headphones',
      'price': '50 KWD',
    },
    {
      'image': 'assets/tv_placeholder.png',
      'name': 'Keyboard',
      'price': '30 KWD',
    },
    {
      'image': 'assets/tv_placeholder.png',
      'name': 'Mouse',
      'price': '20 KWD',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: context.screenHeight * 0.02,
        vertical: context.screenHeight * 0.01,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return Column(
          children: [
            CartItem(
              imagePath: product['image']!,
              productName: product['name']!,
              price: product['price']!,
            ),
            const SizedBox(height: 16),
          ],
        );
      },
    );
  }
}
