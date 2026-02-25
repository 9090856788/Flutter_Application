import 'package:flutter/material.dart';
import 'package:todo_app_firebase/screens/sign_in/sign_in_screen.dart';
import 'package:todo_app_firebase/screens/sign_up/sign_up_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Todo App Firebase",
      home: const SignInScreen(),
    );
  }
}
