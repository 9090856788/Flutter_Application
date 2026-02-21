import 'package:e_commerce_app_kit/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce_app_kit/screens/sign_up/sign_up_screen.dart';
import 'package:e_commerce_app_kit/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
};
