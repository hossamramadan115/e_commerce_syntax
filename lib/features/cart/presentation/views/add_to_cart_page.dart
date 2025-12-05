import 'package:e_commerce_app/core/utils/app_styless.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/constsnt.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/bottom_cart_summary.dart';
import 'widgets/cart_body.dart';

class AddToCartPage extends StatelessWidget {
  const AddToCartPage({super.key});

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
            child: const Icon(
              Icons.arrow_back_ios_new_outlined,
              size: 20,
            ),
          ),
          elevation: 0,
          title: Row(
            children: [
              Text(
                'Cart ',
                style: AppStyless.textStyle13w700.copyWith(fontSize: 18),
              ),
              Text(
                ' (2 Items)',
                style: AppStyless.textStyle13w400,
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.red,
                size: 20,
              ),
            ),
          ],
        ),
        body: const CartItemsList(),
        bottomNavigationBar: const BottomCartSummary(
          totalPrice: "300 KWD",
          shippingCost: "10 KWD",
        ),
      ),
    );
  }
}
