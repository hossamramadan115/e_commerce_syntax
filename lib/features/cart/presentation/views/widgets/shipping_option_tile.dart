import 'package:e_commerce_app/core/utils/app_styless.dart';
import 'package:flutter/material.dart';

class ShippingOptionTile extends StatelessWidget {
  final String label;
  final bool isChecked;

  const ShippingOptionTile({
    super.key,
    required this.label,
    required this.isChecked,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          SizedBox(
            width: 24,
            height: 24,
            child: Radio<bool>(
              value: isChecked,
              groupValue: true,
              onChanged: (value) {},
              activeColor: Colors.black,
            ),
          ),
          const SizedBox(width: 4),
          Text(
            label,
            style: AppStyless.textStyle13w700.copyWith(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
