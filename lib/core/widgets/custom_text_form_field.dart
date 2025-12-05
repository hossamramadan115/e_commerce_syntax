import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.label,
    this.onChanged,
    this.hintText,
    this.obscureText = false,
    this.validator,
    this.prefix,
    this.suffix,
    this.controller,
    this.useBorder = false,
    this.backgroundColor,
  });

  final String? hintText;
  final Widget? label;
  final bool obscureText;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final Widget? prefix;
  final Widget? suffix;
  final TextEditingController? controller;
  final bool useBorder;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        color: backgroundColor ?? const Color(0xfff4f5f9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
        obscureText: obscureText,
        onChanged: onChanged,
        style: const TextStyle(color: Colors.black),
        decoration: InputDecoration(
          prefixIcon: prefix != null
              ? Padding(
                  padding: const EdgeInsets.only(left: 8, right: 4),
                  child: prefix,
                )
              : null,
          prefixIconConstraints: const BoxConstraints(minWidth: 0, minHeight: 0),

          suffixIcon: suffix != null
              ? Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: suffix,
                )
              : null,
          suffixIconConstraints:
              const BoxConstraints(minWidth: 0, minHeight: 0),

          label: label,
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.auto,
          hintStyle: const TextStyle(color: Colors.black54),

          enabledBorder: useBorder ? border(Colors.grey) : InputBorder.none,
          focusedBorder: useBorder ? border(Colors.blue) : InputBorder.none,
          errorBorder: useBorder ? border(Colors.red) : InputBorder.none,
          focusedErrorBorder:
              useBorder ? border(Colors.redAccent) : InputBorder.none,
          border: useBorder ? border(Colors.black) : InputBorder.none,
        ),
      ),
    );
  }

  OutlineInputBorder border(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: 2),
    );
  }
}
