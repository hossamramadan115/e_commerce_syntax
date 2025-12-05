import 'package:e_commerce_app/core/utils/app_styless.dart';
import 'package:flutter/material.dart';

class CustomDiscount extends StatelessWidget {
  const CustomDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            // السعر الحالي (الأصفر)
            Text(
              '20 KWD',
              style: AppStyless.styleBold18,
            ),
            SizedBox(width: 8),

            // السعر القديم (مخطوط)
            Text(
              '20 KWD',
              style: AppStyless.lineThrough16,
            ),
            SizedBox(width: 8),

            // نسبة الخصم
            Text('20%', style: AppStyless.textRedBold16),
          ],
        ),
      ],
    );
  }
}
