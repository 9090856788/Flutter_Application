import 'package:flutter/material.dart';

class BuildEmailTextfield extends StatefulWidget {
  final String labelText;
  final String hintText;

  const BuildEmailTextfield({
    super.key,
    required this.labelText,
    required this.hintText,
  });

  @override
  State<BuildEmailTextfield> createState() => _BuildEmailTextfieldState();
}

class _BuildEmailTextfieldState extends State<BuildEmailTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gapPadding: 10,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gapPadding: 10,
        ),
        suffixIcon: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Icon(Icons.email_outlined, color: Colors.black),
        ),
      ),
    );
  }
}
