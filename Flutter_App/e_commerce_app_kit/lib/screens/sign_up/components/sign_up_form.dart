import 'package:e_commerce_app_kit/screens/sign_in/components/build_email_text_field.dart';
import 'package:e_commerce_app_kit/screens/sign_in/components/build_password_text_field.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          BuildEmailTextfield(labelText: "Email", hintText: "Enter your email"),
          SizedBox(height: 30),
          BuildPasswordTextField(
            labelText: "Password",
            hintText: "Enter your password",
          ),
          SizedBox(height: 30),
          BuildPasswordTextField(
            labelText: "Confirm Password",
            hintText: "Confirm your password",
          ),
        ],
      ),
    );
  }
}
