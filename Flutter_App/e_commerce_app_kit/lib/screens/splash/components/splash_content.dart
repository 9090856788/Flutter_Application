import 'package:e_commerce_app_kit/constants/app_colors.dart';
import 'package:e_commerce_app_kit/constants/size_config.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({super.key, required this.text, required this.image});
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "TECHIFY",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
        Text(
          textAlign: TextAlign.center,
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.black54,
          ),
        ),
        Spacer(flex: 2),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}
