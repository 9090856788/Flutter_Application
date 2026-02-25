import 'package:flutter/material.dart';

class BuildEmailTextfield extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextEditingController? controller;

  const BuildEmailTextfield({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
  });

  @override
  State<BuildEmailTextfield> createState() => _BuildEmailTextfieldState();
}

class _BuildEmailTextfieldState extends State<BuildEmailTextfield> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
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
