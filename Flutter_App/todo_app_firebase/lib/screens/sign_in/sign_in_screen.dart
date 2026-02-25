import 'package:flutter/material.dart';
import 'package:todo_app_firebase/components/build_email_text_field.dart';
import 'package:todo_app_firebase/components/build_password_text_field.dart';
import 'package:todo_app_firebase/components/default_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/7.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    BuildEmailTextfield(
                      labelText: "Email",
                      hintText: "ENter your email",
                    ),
                    SizedBox(height: 30),
                    BuildPasswordTextField(
                      labelText: "Password",
                      hintText: "Enter your password",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Don't have an account?"),
                      SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the registration screen
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: DefaultButton(
                  text: "Login",
                  onPressed: () {
                    // Handle login logic here
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
