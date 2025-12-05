import 'package:e_commerce_app/constsnt.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/features/home/presentation/views/widgets/horizontal_section.dart';
import 'package:flutter/material.dart';

import 'widgets/categories_row.dart';
import 'widgets/categories_title_row.dart';
import 'widgets/home_header.dart';
import 'widgets/search_box.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> categories = [
    Assets.kPerfumes,
    Assets.kElectronics,
    Assets.kToys,
    Assets.kWater,
    Assets.kBrake,
  ];

  final List<String> categoryName = [
    "Perfumes",
    "Electronics",
    "Toys",
    "Water",
    "Spare Parts"
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.04,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeHeader(screenWidth: screenWidth),
              SizedBox(height: screenHeight * 0.03),
              const SearchBox(),
              SizedBox(height: screenHeight * 0.02),
              const CategoriesTitleRow(),
              SizedBox(height: screenHeight * 0.015),
              CategoriesRow(
                categories: categories,
                categoryName: categoryName,
                screenHeight: screenHeight,
                screenWidth: screenWidth,
              ),
              HorizontalSection(title: "Best Sellers"),
              HorizontalSection(title: "New Arrivals"),
              HorizontalSection(title: "Offers"),
              SizedBox(height: screenHeight * 0.07),
            ],
          ),
        ),
      ),
    );
  }
}


