import 'package:flutter/material.dart';

import 'app_text.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.controller,
    required this.lText,
    this.isDense,
    this.borderRadius,
    this.borderSide,
    this.inputType, this.sIcons, this.pIcons, this.onTab, this.obscureText,

  });

  final TextEditingController controller;
  final Widget lText;
  final bool? isDense;
  final BorderRadius? borderRadius;
  final BorderSide? borderSide;
  final TextInputType? inputType;
  final Widget ? sIcons;
  final Widget ? pIcons;
  final VoidCallback ? onTab;
  final bool ? obscureText;
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
        suffixIcon: sIcons,
        prefixIcon: pIcons,
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
