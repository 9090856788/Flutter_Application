import 'package:e_commerce_app_kit/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialLogin extends StatefulWidget {
  final List<String> socialIcons;
  final List<VoidCallback>? onPressedList;

  const SocialLogin({super.key, required this.socialIcons, this.onPressedList});

  @override
  State<SocialLogin> createState() => _SocialLoginState();
}

class _SocialLoginState extends State<SocialLogin> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        widget.socialIcons.length,
        (index) => Padding(
          padding: EdgeInsets.only(
            right: index < widget.socialIcons.length - 1 ? 10 : 0,
          ),
          child: GestureDetector(
            onTap:
                widget.onPressedList != null &&
                    index < widget.onPressedList!.length
                ? widget.onPressedList![index]
                : () {},
            child: Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primaryLightColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(widget.socialIcons[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
