import 'package:e_commerce_app/constsnt.dart';
import 'package:e_commerce_app/core/utils/app_styless.dart';
import 'package:e_commerce_app/core/utils/media_query_values.dart';
import 'package:e_commerce_app/core/widgets/static_button.dart';
import 'package:flutter/material.dart';

class CustomButtomNavigation extends StatelessWidget {
  const CustomButtomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(0, -3),
              ),
            ],
          ),
          child: Row(
            children: <Widget>[
              // السعر الإجمالي
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Total Price',
                        style: AppStyless.textStyle14.copyWith(fontSize: 12)),
                    Text(
                      '200 KWD',
                      style: AppStyless.textStyle13w700.copyWith(fontSize: 14),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: SizedBox(
                  height: context.screenHeight * .055,
                  child: StaticButton(
                    text: "Add To Cart",
                    buttonColor: kMostUseColor,
                    style: AppStyless.textStyle13w700,
                    onTap: () {},
                    margin: EdgeInsets.zero,
                  ),
                ),
              ),
            ],
          ),);
  }
}