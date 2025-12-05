import 'package:e_commerce_app/constsnt.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/app_styless.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomCart extends StatelessWidget {
  const CustomCart({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          AppRouter.kProductDetails,
          // extra: {
          //   "image": imageUrl,
          //   "name": name,
          //   "price": price,
          //   "details": details,
          // },
        );
      },
      child: Container(
        // height: screenHeight * .60,
        padding: EdgeInsets.all(screenWidth * 0.03),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(screenWidth * 0.04),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// 🔵 صورة ثابتة
            ClipRRect(
              borderRadius: BorderRadius.circular(screenWidth * 0.03),
              child: Image.asset(
                Assets.kUnSplash,
                height: screenHeight * 0.18,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            SizedBox(height: screenHeight * 0.02),

            /// 🔵 اسم ثابت
            Text(
              "Smart Watch Pro",
              style: AppStyless.styleSemiBold20,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            SizedBox(height: screenHeight * 0.008),

            Row(
              children: [
                /// 🔵 سعر ثابت
                Text(
                  '199',
                  style: AppStyless.styleBold20.copyWith(
                    color: kMostUseColor,
                  ),
                ),
                Text(
                  ' KWD',
                  style: AppStyless.styleBold20.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: kMostUseColor,
                  ),
                ),

                const Spacer(),

                /// 🔵 زرار ثابت بدون Navigation
                Container(
                  padding: EdgeInsets.all(screenWidth * 0.015),
                  decoration: BoxDecoration(
                    color: kMostUseColor,
                    borderRadius: BorderRadius.circular(screenWidth * 0.02),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: screenWidth * 0.05,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:e_commerce_app/constsnt.dart';
// import 'package:e_commerce_app/core/utils/app_router.dart';
// import 'package:e_commerce_app/core/utils/app_styless.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class CustomCart extends StatelessWidget {
//   final String imageUrl;
//   final String name;
//   final String price, details;

//   const CustomCart({
//     super.key,
//     required this.imageUrl,
//     required this.name,
//     required this.price,
//     required this.details,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;

//     return GestureDetector(
//                     onTap: () {
//                       GoRouter.of(context).push(
//                         AppRouter.kProductDetails,
//                         extra: {
//                           "image": imageUrl,
//                           "name": name,
//                           "price": price,
//                           "details": details,
//                         },
//                       );
//                     },
//       child: Container(
//         // width: screenWidth * 0.45,
//         height: screenHeight * .70,
//         // margin: EdgeInsets.only(
//         // right: screenWidth * 0.04, bottom: screenHeight * 0.02),
//         // padding: EdgeInsets.all(screenWidth * 0.03,),
//         padding: EdgeInsets.only(
//           left: screenWidth * 0.03,
//           right: screenWidth * 0.03,
//           bottom: screenHeight * 0.01,
//           top: screenHeight * 0.01,
//         ),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(screenWidth * 0.04),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black12,
//               blurRadius: 6,
//               offset: Offset(0, 3),
//             ),
//           ],
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(screenWidth * 0.03),
//               child: Image.network(
//                 imageUrl,
//                 height: screenHeight * 0.18,
//                 width: double.infinity,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             SizedBox(height: screenHeight * 0.02),
//             Text(
//               name,
//               style: AppStyless.styleSemiBold20,
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//             SizedBox(height: screenHeight * 0.008),
//             Padding(
//               padding: const EdgeInsets.only(),
//               child: Row(
//                 children: [
//                   Text(
//                     '\$$price',
//                     style: AppStyless.styleBold20.copyWith(
//                       color: kMostUseColor,
//                     ),
//                   ),
//                   Spacer(),
//                   Align(
//                     alignment: Alignment.bottomRight,
//                     child: GestureDetector(
//                       onTap: () {
//                         GoRouter.of(context).push(
//                           AppRouter.kProductDetails,
//                           extra: {
//                             "image": imageUrl,
//                             "name": name,
//                             "price": price,
//                             "details": details,
//                           },
//                         );
//                       },
//                       child: Container(
//                         padding: EdgeInsets.all(screenWidth * 0.015),
//                         decoration: BoxDecoration(
//                           color: kMostUseColor,
//                           borderRadius: BorderRadius.circular(screenWidth * 0.02),
//                         ),
//                         child: Icon(
//                           Icons.add,
//                           color: Colors.white,
//                           size: screenWidth * 0.05,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
