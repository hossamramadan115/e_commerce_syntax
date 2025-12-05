import 'package:e_commerce_app/constsnt.dart';
import 'package:flutter/material.dart';

class CustomVolumeOption extends StatelessWidget {
  final String label;
  final bool isSelected;
  final bool isPrimary;
  final VoidCallback onTap;

  const CustomVolumeOption({
    super.key,
    required this.label,
    this.isSelected = false,
    this.isPrimary = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Color backgroundColor = isSelected ? kMostUseColor : Colors.white;
    Color borderColor = isSelected ? kMostUseColor : Colors.grey.shade300;
    Color textColor = isSelected ? Colors.black : Colors.grey.shade600;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(color: borderColor, width: 1.5),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
