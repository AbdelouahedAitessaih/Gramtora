import 'package:flutter/material.dart';

class Widgets {
  static textFormField(String? hintText, String? Function(String?)? validator,
      [Widget? suffix]) {
    return TextFormField(
      validator: validator,
      decoration: InputDecoration(
          hintText: hintText,
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey)),
          suffixIcon: suffix),
    );
  }
}
