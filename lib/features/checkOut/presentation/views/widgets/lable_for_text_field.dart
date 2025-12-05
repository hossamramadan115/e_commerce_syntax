import 'package:e_commerce_app/core/utils/app_styless.dart';
import 'package:flutter/material.dart';

class LableForTextField extends StatelessWidget {
  const LableForTextField({super.key, required this.text1, required this.text2});
  final String text1;
    final String text2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text1,
          style: AppStyless.textStyle13w700.copyWith(fontSize: 14),
        ),
        SizedBox(width: 4),
        Text(
          text2,
          style: AppStyless.textStyle13w700.copyWith(
            fontSize: 15,
            color: Colors.red,
          ),
        ),
      ],
    );
  }
}
