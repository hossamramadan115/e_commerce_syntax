import 'package:e_commerce_app/core/utils/app_styless.dart';
import 'package:e_commerce_app/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';
import '../../../../constsnt.dart';
import 'widgets/custom_buttom_navigation.dart';
import 'widgets/custom_discount.dart';
import 'widgets/custom_product_amount.dart';
import 'widgets/product_image_and_name.dart';
import 'widgets/rating_summary.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: true,
      left: false,
      right: false,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back_ios_new_outlined),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(context.screenWidth * 0.0427),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ProductImageAndName(),
                const SizedBox(height: 8),
                CustomDiscount(),
                const SizedBox(height: 16),
                CustomProductAmount(),
                const SizedBox(height: 24),
                Text('Description', style: AppStyless.textStyleBold16),
                const SizedBox(height: 8),
                Text(
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text.',
                  style: AppStyless.textStyle14,
                ),
                const SizedBox(height: 16),
                RatingSummary(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomButtomNavigation(),
      ),
    );
  }
}
