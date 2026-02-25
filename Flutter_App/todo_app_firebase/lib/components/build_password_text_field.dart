import 'package:flutter/material.dart';

class BuildPasswordTextField extends StatefulWidget {
  const BuildPasswordTextField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.controller,
  });
  final String labelText;
  final String hintText;
  final TextEditingController? controller;

  @override
  State<BuildPasswordTextField> createState() => _BuildPasswordTextFieldState();
}

class _BuildPasswordTextFieldState extends State<BuildPasswordTextField> {
  bool _obscureText = true;
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
      obscureText: _obscureText,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gapPadding: 10,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gapPadding: 10,
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: GestureDetector(
            onTap: () => setState(() => _obscureText = !_obscureText),
            onLongPressStart: (_) => setState(() => _obscureText = false),
            onLongPressEnd: (_) => setState(() => _obscureText = true),
            child: Icon(
              _obscureText ? Icons.visibility_off : Icons.visibility,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
