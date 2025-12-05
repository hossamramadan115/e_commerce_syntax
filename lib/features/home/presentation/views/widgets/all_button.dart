import 'package:flutter/material.dart';
import 'package:e_commerce_app/constsnt.dart';

class AllButton extends StatelessWidget {
  final double screenWidth;

  const AllButton({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(screenWidth * 0.05),
      margin: EdgeInsets.only(right: screenWidth * 0.04),
      decoration: BoxDecoration(
        color: kMostUseColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Text("All",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }
}
