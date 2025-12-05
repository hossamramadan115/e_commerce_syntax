import 'package:e_commerce_app/core/utils/app_styless.dart';
import 'package:e_commerce_app/core/utils/media_query_values.dart';
import 'package:e_commerce_app/features/checkOut/presentation/views/widgets/lable_for_text_field.dart';
import 'package:flutter/material.dart';
import 'custom_text_field.dart';
import 'region_dropdown.dart';

class AddressSection extends StatelessWidget {
  const AddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    final height = context.screenHeight;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LableForTextField(
          text1: 'Region',
          text2: '*',
        ),
        SizedBox(height: height * 0.012),
        RegionDropdown(),
        SizedBox(height: height * 0.02),
        LableForTextField(
          text1: 'Street Name',
          text2: '*',
        ),
        SizedBox(height: height * 0.008),
        CustomTextField(
          hint: 'Enter street',
          validatorMsg: 'Required',
        ),
        SizedBox(height: height * 0.015),
        LableForTextField(
          text1: 'Building Number',
          text2: '*',
        ),
        SizedBox(height: height * 0.008),
        CustomTextField(
          hint: 'Enter number',
          validatorMsg: 'Required',
        ),
        SizedBox(height: height * 0.015),
        Text(
          'Floor',
          style: AppStyless.textStyle13w700.copyWith(fontSize: 14),
        ),
        SizedBox(height: height * 0.008),
        CustomTextField(
          hint: 'Enter floor',
        ),
        SizedBox(height: height * 0.015),
        Text(
          'Flat',
          style: AppStyless.textStyle13w700.copyWith(fontSize: 14),
        ),
        SizedBox(height: height * 0.008),
        CustomTextField(
          hint: 'Enter flat',
        ),
      ],
    );
  }
}
