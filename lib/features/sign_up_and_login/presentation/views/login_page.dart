import 'package:e_commerce_app/constsnt.dart';
import 'package:e_commerce_app/core/utils/app_router.dart';
import 'package:e_commerce_app/core/utils/app_styless.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/core/widgets/custom_button.dart';
import 'package:e_commerce_app/core/widgets/custom_text_button.dart';
import 'package:e_commerce_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  void dispose() {
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
                /// 🔹 صورة الهيدر
                SizedBox(
                  height: height * 0.3,
                  width: width,
                  child: Image.asset(
                    Assets.kLoginImage,
                    fit: BoxFit.cover,
                  ),
                ),

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
                        /// 🔹 العنوان
                        Center(
                          child: Text(
                            'Sign In',
                            style: AppStyless.styleBold20.copyWith(
                              fontSize: width * 0.06,
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.02),

                        /// 🔹 النص تحت العنوان
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

                        /// 🔹 الإيميل
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

                        /// 🔹 الباسورد
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
                        SizedBox(height: height * 0.009),

                        /// 🔹 Forget Password
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forget password',
                            style: TextStyle(
                              color: kMostUseColor,
                              fontSize: width * 0.038,
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.025),

                        /// 🔹 زرار اللوجين (UI بس)
                        CustomButton(
                          backgroundColor: kMostUseColor,
                          textColor: Colors.white,
                          text: 'Login',
                          onTap: () {
                            GoRouter.of(context)
                                .pushReplacement(AppRouter.kBottombar);
                          },
                        ),
                        SizedBox(height: height * 0.02),

                        /// 🔹 Sign Up Navigation
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Create new account...',
                              style: TextStyle(
                                fontSize: width * 0.04,
                              ),
                            ),
                            CustomTextButton(
                              text: 'Sign Up',
                              onPressed: () {
                                GoRouter.of(context)
                                    .push(AppRouter.kSignUpPage);
                              },
                            ),
                          ],
                        ),
                        // SizedBox(height: height * 0.01),

                        // Center(child: AdminButton()),

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
