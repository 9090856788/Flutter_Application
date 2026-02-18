import 'package:e_commerce_app_kit/routes.dart';
import 'package:e_commerce_app_kit/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter E-Commerce App Kit",
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
