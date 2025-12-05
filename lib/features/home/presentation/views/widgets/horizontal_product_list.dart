import 'package:flutter/material.dart';
import 'package:e_commerce_app/core/widgets/custom_cart.dart';

class HorizontalProductList extends StatelessWidget {
  final double screenWidth;

  const HorizontalProductList({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            width: screenWidth * 0.45,
            margin: EdgeInsets.only(right: screenWidth * 0.03),
            child: const CustomCart(),
          );
        },
      ),
    );
  }
}
