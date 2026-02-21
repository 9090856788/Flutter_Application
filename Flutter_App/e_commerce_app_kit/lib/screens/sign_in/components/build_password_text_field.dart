import 'package:e_commerce_app_kit/constants/app_colors.dart';
import 'package:flutter/material.dart';

class BuildPasswordTextField extends StatefulWidget {
  const BuildPasswordTextField({
    super.key,
    required this.labelText,
    required this.hintText,
  });
  final String labelText;
  final String hintText;

  @override
  State<BuildPasswordTextField> createState() => _BuildPasswordTextFieldState();
}

class _BuildPasswordTextFieldState extends State<BuildPasswordTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.textSecondary),
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gapPadding: 10,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.textSecondary),
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gapPadding: 10,
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Icon(Icons.lock_outline, color: AppColors.textSecondary),
        ),
      ),
    );
  }
}
