import 'package:e_commerce_app_kit/constants/app_colors.dart';
import 'package:e_commerce_app_kit/screens/sign_up/components/body.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static String routeName = "/sign_up";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        centerTitle: true,
        backgroundColor: AppColors.surface,
      ),
      body: Body(),
    );
  }
}
