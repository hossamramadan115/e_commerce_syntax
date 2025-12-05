import 'package:e_commerce_app/core/utils/app_styless.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';

class ProductImageAndName extends StatelessWidget {
  const ProductImageAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              child: AspectRatio(
                aspectRatio: 1.20,
                child: Image.asset(
                  Assets.kUnSplash,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Positioned(
              top: 8,
              right: 8,
              child: Card(
                color: Colors.white,
                shape: CircleBorder(),
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Icon(
                    IconsaxPlusBold.heart,
                    color: Colors.red,
                    size: 24,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          'The Ordinary',
          style: AppStyless.textStyleBold16,
        ),
      ],
    );
  }
}
