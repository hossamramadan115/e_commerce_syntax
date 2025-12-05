import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/constsnt.dart';
import 'package:e_commerce_app/core/utils/app_styless.dart';
import 'package:e_commerce_app/core/utils/media_query_values.dart';
import 'package:e_commerce_app/core/widgets/static_button.dart';
import 'package:go_router/go_router.dart';

class BottomCartSummary extends StatelessWidget {
  final String totalPrice;
  final String shippingCost;

  const BottomCartSummary({
    super.key,
    required this.totalPrice,
    required this.shippingCost,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: context.screenHeight * .02,
          vertical: context.screenHeight * .015),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          // السعر الإجمالي
          Expanded(
            flex: 4,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total: $totalPrice",
                  style: AppStyless.textStyle13w700.copyWith(fontSize: 15),
                ),
                SizedBox(height: 3),
                Text(
                  "Total shipping: $shippingCost",
                  style: AppStyless.textStyle14.copyWith(fontSize: 12),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: SizedBox(
              height: context.screenHeight * .057,
              child: StaticButton(
                text: "Checkout ➔",
                buttonColor: kMostUseColor,
                style: AppStyless.textStyle13w700,
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kCheckoutPage);
                },
                margin: EdgeInsets.zero,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
