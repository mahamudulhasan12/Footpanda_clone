import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.colors,
    this.decoration,
    this.overflow,
    this.worldSpacing,
    this.fontFamily,
  });
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? colors;
  final TextDecoration? decoration;
  final TextOverflow? overflow;
  final double? worldSpacing;
  final String? fontFamily;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 15,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        color: colors,
        decoration: decoration,
        overflow: overflow,
        wordSpacing: worldSpacing,
      ),
    );
  }
}
