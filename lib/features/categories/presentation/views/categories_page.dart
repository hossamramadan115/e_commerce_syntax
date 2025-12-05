import 'package:e_commerce_app/constsnt.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  CategoriesPage({super.key});

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
      appBar: AppBar(
        title: const Text("Categories"),
        backgroundColor: kPrimaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.04,
          vertical: screenHeight * 0.02,
        ),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: screenWidth * 0.03,
            mainAxisSpacing: screenHeight * 0.02,
            childAspectRatio: 0.85,
          ),
          itemBuilder: (context, index) {
            return Column(
              children: [
                /// الصورة ر
                Container(
                  padding: const EdgeInsets.all(40),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Image.asset(
                      categories[index],
                      width: screenWidth * .2,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                SizedBox(height: screenHeight * 0.008),

                /// الاسم أسفل الصورة
                Text(
                  categoryName[index],
                  style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
