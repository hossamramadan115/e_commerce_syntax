import 'package:e_commerce_app/constsnt.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/custom_list_tile.dart';
import 'package:e_commerce_app/features/profile/presentation/views/widgets/custom_whats.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: screenWidth * 0.18,
                    backgroundImage: AssetImage(Assets.profileImage),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.blue,
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.025),
              Text(
                'Hello User',
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'user@example.com',
                style: TextStyle(
                  fontSize: screenWidth * 0.04,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: screenHeight * 0.03),

              // Custom list tiles
              CustomListTile(
                icon: Icons.logout,
                title: 'Sign Out',
                onTap: () {
                  // showCustomDialog(
                  //   context: context,
                  //   title: "Sign Out",
                  //   content: "Are you sure you want to sign out?",
                  //   confirmText: "Sign Out",
                  //   onConfirm: () async {
                  //     await AuthService().signOut();
                  //     await SharedPreferencesHelper().clearAll();
                  //     GoRouter.of(context).go(AppRouter.kOnBoarding);
                  //   },
                  // );
                },
              ),
              CustomListTile(
                icon: Icons.delete,
                title: 'Delete Account',
                onTap: () {},
              ),
              CustomWhats(),
            ],
          ),
        ),
      ),
    );
  }
}
