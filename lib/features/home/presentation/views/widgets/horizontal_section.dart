import 'package:flutter/material.dart';
import 'horizontal_product_list.dart';

class HorizontalSection extends StatelessWidget {
  final String title;

  const HorizontalSection({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: screen.height * 0.02),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold)),
            const Text("See All",
                style: TextStyle(fontSize: 16, color: Colors.blue)),
          ],
        ),

        SizedBox(height: screen.height * 0.01),

        HorizontalProductList(
          screenWidth: screen.width,
        ),
      ],
    );
  }
}
