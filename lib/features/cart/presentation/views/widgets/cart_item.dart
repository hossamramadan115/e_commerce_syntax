import 'package:e_commerce_app/constsnt.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';
import 'quantity_selector.dart';

class CartItem extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String price;

  const CartItem({
    super.key,
    required this.imagePath,
    required this.productName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: context.screenHeight * 0.015,
        horizontal: context.screenWidth * 0.03,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(context.screenWidth * 0.025),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 1,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: context.screenWidth * 0.22,
            height: context.screenWidth * 0.22,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(context.screenWidth * 0.02),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(context.screenWidth * 0.02),
              child: Image.asset(
                Assets.kUnSplash,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => const Icon(Icons.image),
              ),
            ),
          ),
          SizedBox(width: context.screenWidth * 0.03),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productName,
                    style: TextStyle(
                        fontSize: context.screenWidth * 0.035,
                        color: Colors.grey)),
                Text("LG",
                    style: TextStyle(
                        fontSize: context.screenWidth * 0.04,
                        fontWeight: FontWeight.bold)),
                Text(price,
                    style: TextStyle(
                        fontSize: context.screenWidth * 0.04,
                        color: kMostUseColor,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          QuantitySelector()
        ],
      ),
    );
  }
}
