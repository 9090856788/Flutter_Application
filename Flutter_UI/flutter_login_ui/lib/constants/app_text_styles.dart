import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_sizes.dart';

/// Reusable `TextStyle` definitions.
class AppTextStyles {
  AppTextStyles._();

  static const TextStyle heading = TextStyle(
    color: AppColors.textPrimary,
    fontSize: AppSizes.fontXLarge,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle title = TextStyle(
    color: AppColors.textPrimary,
    fontSize: AppSizes.fontLarge,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle body = TextStyle(
    color: AppColors.textSecondary,
    fontSize: AppSizes.fontRegular,
  );

  static const TextStyle button = TextStyle(
    color: Colors.white,
    fontSize: AppSizes.fontRegular,
    fontWeight: FontWeight.w600,
  );
}
