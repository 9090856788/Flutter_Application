import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color primaryColor = Color(0xFFFF7643);
  static const Color primaryLightColor = Color(0xFFFFECDF);
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const secondaryColor = Color(0xFF979797);
  static const textColor = Color(0xFF757575);
  static const animationDuration = Duration(milliseconds: 200);

  static const Color surface = Colors.white;

  static const Color textPrimary = Color(0xFF1A1A1A);
  static const Color textSecondary = Color(0xFF757575);

  static const Color success = Color(0xFF2E7D32);
  static const Color error = Color(0xFFD32F2F);
  static const Color warning = Color(0xFFF9A825);
  static const Color info = Color(0xFF0288D1);

  static const Color border = Color(0xFFE0E0E0);
  static const Color divider = Color(0xFFEEEEEE);
}
