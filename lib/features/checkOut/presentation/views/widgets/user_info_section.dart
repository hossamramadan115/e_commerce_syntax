import 'package:e_commerce_app/core/utils/app_styless.dart';
import 'package:flutter/material.dart';
import 'country_code_picker.dart';
import 'custom_text_field.dart';
import 'lable_for_text_field.dart';

class UserInfoSection extends StatefulWidget {
  const UserInfoSection({super.key});

  @override
  State<UserInfoSection> createState() => _UserInfoSectionState();
}

class _UserInfoSectionState extends State<UserInfoSection> {
  String _selectedCode = "+965";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Checkout',
          style: AppStyless.textStyle13w700.copyWith(fontSize: 18),
        ),
        const SizedBox(height: 22),
        LableForTextField(text1: 'Name', text2: '*'),
        const SizedBox(height: 6),
        const CustomTextField(
          hint: 'Enter name',
          validatorMsg: 'Name required',
        ),
        const SizedBox(height: 16),
        Text(
          'Email',
          style: AppStyless.textStyle13w700.copyWith(fontSize: 14),
        ),
        const SizedBox(height: 6),
        const CustomTextField(
          hint: 'Enter email',
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 16),
        LableForTextField(text1: 'Phone Number', text2: '*'),
        const SizedBox(height: 6),
        CustomTextField(
          hint: 'Enter Phone',
          validatorMsg: 'Phone required',
          keyboardType: TextInputType.phone,
          prefix: CountryCodePicker(
            initialCode: _selectedCode,
            onChanged: (newCode) {
              setState(() => _selectedCode = newCode);
            },
          ),
        ),
      ],
    );
  }
}
