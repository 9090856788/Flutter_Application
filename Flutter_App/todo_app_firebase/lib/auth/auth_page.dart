import 'package:flutter/material.dart';
import 'package:todo_app_firebase/screens/sign_in/sign_in_screen.dart';
import 'package:todo_app_firebase/screens/sign_up/sign_up_screen.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool a = true;

  void toggle() {
    setState(() {
      a = !a;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (a) {
      return SignInScreen(show: toggle);
    } else {
      return SignUpScreen(show: toggle);
    }
  }
}
