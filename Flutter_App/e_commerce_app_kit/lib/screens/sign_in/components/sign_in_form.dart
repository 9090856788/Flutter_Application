import 'package:e_commerce_app_kit/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Email",
              hintText: "Enter your email",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.textSecondary),
                borderRadius: BorderRadius.all(Radius.circular(30)),
                gapPadding: 10,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.textSecondary),
                borderRadius: BorderRadius.all(Radius.circular(30)),
                gapPadding: 10,
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.email_outlined,
                  color: AppColors.textSecondary,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: "Password",
              hintText: "Enter your password",
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.textSecondary),
                borderRadius: BorderRadius.all(Radius.circular(30)),
                gapPadding: 10,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.textSecondary),
                borderRadius: BorderRadius.all(Radius.circular(30)),
                gapPadding: 10,
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(Icons.lock_outline, color: AppColors.textSecondary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
