import 'package:e_commerce_app_kit/screens/sign_in/components/build_email_text_field.dart';
import 'package:e_commerce_app_kit/screens/sign_in/components/build_password_text_field.dart';
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
          BuildEmailTextfield(labelText: "Email", hintText: "Enter your email"),
          SizedBox(height: 30),
          BuildPasswordTextField(
            labelText: "Password",
            hintText: "Enter your password",
          ),
        ],
      ),
    );
  }
}
