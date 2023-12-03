import 'package:flutter/material.dart';

class ReuseTextfield extends StatelessWidget {
  final String hintText;
  final Widget prefixIcon, suffixIcon;
  final TextInputType textInputType;
  final bool obscureText;

  ReuseTextfield({
    required this.hintText,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.textInputType,
    required this.obscureText,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      obscureText: obscureText,
      style: TextStyle(
        color: Colors.black,
      ),
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        // to ask Teacher "why does not hintText  work if suffix is Container"
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
        contentPadding: EdgeInsets.all(10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
