import 'package:e_commerce_app/constsnt.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/app_styless.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/core/widgets/custom_button.dart';
import 'package:e_commerce_app/core/widgets/custom_text_button.dart';
import 'package:e_commerce_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final double height = constraints.maxHeight;
          final double width = constraints.maxWidth;

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// 🔹 صورة الـ Header
                SizedBox(
                  height: height * 0.3,
                  width: width,
                  child: Image.asset(
                    Assets.kLoginImage,
                    fit: BoxFit.cover,
                  ),
                ),

                /// 🔹 باقي عناصر الصفحة
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: width * 0.06,
                    vertical: height * 0.02,
                  ),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// 🔹 العنوان الرئيسي
                        Center(
                          child: Text(
                            'Sign Up',
                            style: AppStyless.styleBold20.copyWith(
                              fontSize: width * 0.06,
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.02),

                        /// 🔹 العنوان الثانوي
                        Center(
                          child: Text(
                            'Please enter the details below to\ncontinue',
                            style: AppStyless.styleLightSemiBold20.copyWith(
                              fontSize: width * 0.04,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(height: height * 0.03),

                        /// 🔹 حقل الاسم
                        Text(
                          'Name',
                          style: AppStyless.styleBold20.copyWith(
                            fontSize: width * 0.045,
                          ),
                        ),
                        SizedBox(height: height * 0.02),

                        CustomTextFormField(
                          controller: name,
                          hintText: 'Name',
                        ),

                        SizedBox(height: height * 0.03),

                        /// 🔹 حقل الإيميل
                        Text(
                          'Email',
                          style: AppStyless.styleBold20.copyWith(
                            fontSize: width * 0.045,
                          ),
                        ),
                        SizedBox(height: height * 0.02),

                        CustomTextFormField(
                          controller: email,
                          hintText: 'Email',
                        ),

                        SizedBox(height: height * 0.03),

                        /// 🔹 حقل الباسورد
                        Text(
                          'Password',
                          style: AppStyless.styleBold20.copyWith(
                            fontSize: width * 0.045,
                          ),
                        ),
                        SizedBox(height: height * 0.02),

                        CustomTextFormField(
                          controller: password,
                          hintText: 'Password',
                          obscureText: true,
                        ),

                        SizedBox(height: height * 0.025),

                        /// 🔹 زرار Sign Up
                        CustomButton(
                          backgroundColor: kMostUseColor,
                          textColor: Colors.white,
                          text: 'Sign Up',
                          onTap: () {
                            // UI فقط → مفيش لوجيك
                          },
                        ),

                        SizedBox(height: height * 0.008),

                        /// 🔹 لينك تسجيل الدخول
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'already have an account...',
                              style: TextStyle(
                                fontSize: width * 0.04,
                              ),
                            ),
                            CustomTextButton(
                              text: 'Login',
                              onPressed: () {
                                GoRouter.of(context).push(AppRouter.kLoginpage);
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.05),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
