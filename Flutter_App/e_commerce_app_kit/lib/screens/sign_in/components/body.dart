import 'package:e_commerce_app_kit/components/default_button.dart';
import 'package:e_commerce_app_kit/components/social_login.dart';
import 'package:e_commerce_app_kit/constants/app_colors.dart';
import 'package:e_commerce_app_kit/constants/size_config.dart';
import 'package:e_commerce_app_kit/components/header_title.dart';
import 'package:e_commerce_app_kit/screens/sign_in/components/sign_in_form.dart';
import 'package:e_commerce_app_kit/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeaderTitle(
              headingTitle: "Welcome Back",
              subHeadingTitle:
                  "Sign in with your email and password \nor continue with social media",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SignInForm(),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20.0,
                      top: 0,
                      bottom: 25.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: false,
                              onChanged: (bool? value) {
                                setState(() {
                                  value = value!;
                                });
                              },
                            ),
                            const Text("Remember me"),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "Forgot password",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  DefaultButton(text: "Continue", onPressed: () {}),
                ],
              ),
            ),
            SizedBox(height: 30),
            Column(
              children: [
                SocialLogin(
                  socialIcons: [
                    "assets/icons/google-icon.svg",
                    "assets/icons/facebook-2.svg",
                    "assets/icons/twitter.svg",
                  ],
                  onPressedList: [
                    () {
                      // Google login
                    },
                    () {
                      // Facebook login
                    },
                    () {
                      // Twitter login
                    },
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(18),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, SignUpScreen.routeName);
                      },
                      child: Text(
                        " Sign Up",
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(18),
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
