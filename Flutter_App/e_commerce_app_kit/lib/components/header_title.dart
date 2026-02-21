import 'package:e_commerce_app_kit/constants/size_config.dart';
import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    super.key,
    required this.headingTitle,
    required this.subHeadingTitle,
  });
  final String headingTitle;
  final String subHeadingTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(150),
      child: Column(
        children: [
          Spacer(),
          Text(
            headingTitle,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(28),
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            subHeadingTitle,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(14),
              fontWeight: FontWeight.normal,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
