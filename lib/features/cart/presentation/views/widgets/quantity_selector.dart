import 'package:flutter/material.dart';
import 'quantity_button.dart';

class QuantitySelector extends StatefulWidget {
  const QuantitySelector({super.key});

  @override
  State<QuantitySelector> createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int quantity = 1; // القيمة الابتدائية

  void increment() {
    setState(() {
      quantity++;
    });
  }

  void decrement() {
    setState(() {
      if (quantity > 1) quantity--; // الحد الأدنى 1
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          QuantityButton(icon: Icons.remove, onPressed: decrement),
          SizedBox(
            width: 30,
            child: Center(child: Text(quantity.toString())),
          ),
          QuantityButton(icon: Icons.add, onPressed: increment),
        ],
      ),
    );
  }
}


