import 'package:flutter/material.dart';

import 'app_text.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.controller,
    this.lText,
    this.isDense,
    this.borderRadius,
    this.borderSide,
    this.inputType, this.sIcons, this.pIcons, this.onTab, this.obscureText, this.fillColor, this.filled, this.hindText, this.hTStyle,

  });

  final TextEditingController controller;
  final String ? hindText;
  final Widget ?lText;
  final bool? isDense;
  final BorderRadius? borderRadius;
  final BorderSide? borderSide;
  final TextInputType? inputType;
  final Widget ? sIcons;
  final Widget ? pIcons;
  final VoidCallback ? onTab;
  final bool ? obscureText;
  final Color ? fillColor;
  final bool ? filled;
  final TextStyle ? hTStyle;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText ?? true,
      onTap: onTab,
      controller: controller,
      keyboardType: inputType,
      // autofocus: true,
      decoration: InputDecoration(
        isDense: isDense,
        label: lText,
        hintStyle: hTStyle,
        suffixIcon: sIcons,
        prefixIcon: pIcons,
        fillColor: fillColor,
        filled: filled,
        border: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(10),
          borderSide: borderSide ?? BorderSide(width: 0.5, color: Colors.black),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(10),
          borderSide: borderSide ?? BorderSide(width: 0.5, color: Colors.black),
        ),
      ),
    );
  }
}
