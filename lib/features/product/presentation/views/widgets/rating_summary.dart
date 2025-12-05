import 'package:e_commerce_app/constsnt.dart';
import 'package:e_commerce_app/core/utils/app_styless.dart';
import 'package:e_commerce_app/core/utils/media_query_values.dart';
import 'package:e_commerce_app/features/product/presentation/views/widgets/custom_rate_button.dart';
import 'package:e_commerce_app/features/product/presentation/views/widgets/rating_rwo.dart';
import 'package:flutter/material.dart';

class RatingSummary extends StatelessWidget {
  const RatingSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              'Ratings',
              style: AppStyless.textStyleBold16,
            ),
            // زر "Rate Product" (تقييم المنتج)
            CustomRateButton(
              onPressed: () {},
              text: 'Rate Product',
            ),
          ],
        ),
        const SizedBox(height: 16),

        // عرض ملخص التقييمات
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // جزء التقييم بالنجوم
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Very Good',
                      style: AppStyless.textStyle14
                          .copyWith(fontWeight: FontWeight.w700)),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(Icons.star, color: kMostUseColor, size: 20),
                      Icon(Icons.star, color: kMostUseColor, size: 20),
                      Icon(Icons.star, color: kMostUseColor, size: 20),
                      Icon(Icons.star, color: kMostUseColor, size: 20),
                      Icon(Icons.star_half, color: kMostUseColor, size: 20),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text('(200 Ratings)',
                      style: AppStyless.textStyle14.copyWith(fontSize: 10)),
                ],
              ),
            ),
            SizedBox(width: context.screenWidth * .07),
            //  (Progress Bars)
            Expanded(
              flex: 3,
              child: Column(
                children: const <Widget>[
                  RatingBarRow(starCount: 5, progress: 0.9, count: 300),
                  RatingBarRow(starCount: 4, progress: 0.6, count: 200),
                  RatingBarRow(starCount: 3, progress: 0.3, count: 170),
                  RatingBarRow(starCount: 2, progress: 0.15, count: 50),
                  RatingBarRow(starCount: 1, progress: 0.05, count: 20),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
