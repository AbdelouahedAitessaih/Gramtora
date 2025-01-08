import 'package:flutter/material.dart';

class Widgets {
  static textFormField(String? hintText, String? Function(String?)? validator,
      [Widget? suffix, TextEditingController? controller]) {
    return TextFormField(
      controller: controller,
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
