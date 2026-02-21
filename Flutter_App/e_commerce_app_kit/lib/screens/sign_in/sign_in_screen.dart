import 'package:e_commerce_app_kit/constants/app_colors.dart';
import 'package:e_commerce_app_kit/screens/sign_in/components/body.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  static String routeName = "/sign_in";

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
        centerTitle: true,
        backgroundColor: AppColors.surface,
      ),
      body: Body(),
    );
  }
}
