import 'package:e_commerce_app_kit/components/default_button.dart';
import 'package:e_commerce_app_kit/components/header_title.dart';
import 'package:e_commerce_app_kit/components/social_login.dart';
import 'package:e_commerce_app_kit/screens/sign_up/components/sign_up_form.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final double minHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    return SafeArea(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: minHeight),
          child: IntrinsicHeight(
            child: Column(
              children: [
                HeaderTitle(
                  headingTitle: "Register Account",
                  subHeadingTitle:
                      "Complete your details or continue \nwith social media",
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: SignUpForm(),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: DefaultButton(text: "Continue", onPressed: () {}),
                ),
                SizedBox(height: 40),
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
                    Text(
                      textAlign: TextAlign.center,
                      "By continuing your confirm that you agree \nwith our Term and Condition",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
