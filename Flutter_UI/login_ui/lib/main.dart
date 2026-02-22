import 'package:flutter/material.dart';
import 'package:login_ui/pages/signin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login UI',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SigninScreen(),
    );
  }
}
