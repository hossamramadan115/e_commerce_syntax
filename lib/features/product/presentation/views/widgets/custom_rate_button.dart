import 'package:e_commerce_app/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/constsnt.dart';

class CustomRateButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const CustomRateButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    const double borderRadius = 4.0;

    return SizedBox(
      height: context.screenWidth * (32 / 375.0),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(color: kMostUseColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: EdgeInsets.symmetric(
              horizontal: context.screenWidth * (16 / 375.0)),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: kMostUseColor,
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
