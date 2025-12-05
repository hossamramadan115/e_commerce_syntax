import 'package:flutter/material.dart';
import 'package:e_commerce_app/constsnt.dart';

class CategoriesTitleRow extends StatelessWidget {
  const CategoriesTitleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text("Categories",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text("See All",
            style: TextStyle(fontSize: 16, color: kMostUseColor)),
      ],
    );
  }
}
