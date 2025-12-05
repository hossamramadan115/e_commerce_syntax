import 'package:e_commerce_app/constsnt.dart';
import 'package:e_commerce_app/core/utils/media_query_values.dart';
import 'package:e_commerce_app/core/widgets/custom_button.dart';
import 'package:e_commerce_app/features/checkOut/presentation/views/widgets/user_info_section.dart';
import 'package:flutter/material.dart';
import 'widgets/delivery_section.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: true,
      top: false,
      right: false,
      left: false,
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
        ),
        body: SingleChildScrollView(
          padding:
              EdgeInsets.symmetric(horizontal: context.screenHeight * .016),
          child: Column(
            children: [
              UserInfoSection(),
              SizedBox(height: 20),
              DeliverySection(),
              SizedBox(height: 20),
              CustomButton(
                text: 'Confirm',
                textColor: Colors.black,
                backgroundColor: kMostUseColor,
                onTap: () {},
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
