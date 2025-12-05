import 'package:e_commerce_app/core/utils/app_styless.dart';
import 'package:e_commerce_app/core/utils/media_query_values.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.validatorMsg,
    this.keyboardType = TextInputType.text,
    this.prefix,
    this.suffix,
    this.controller,
  });

  final String hint;
  final String? validatorMsg;
  final TextInputType keyboardType;
  final Widget? prefix;
  final Widget? suffix;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: validatorMsg != null
          ? (v) => (v == null || v.trim().isEmpty) ? validatorMsg : null
          : null,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyless.textStyle13w400,
        filled: true,
        fillColor: Colors.white,
        prefixIcon: prefix,
        suffixIcon: suffix,
        contentPadding: EdgeInsets.symmetric(
          horizontal: context.screenWidth * 0.03,
          vertical: context.screenHeight * 0.018,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
      ),
    );
  }
}
