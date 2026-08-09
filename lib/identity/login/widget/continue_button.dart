import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:foodpanda/util/app_colors.dart';

import '../../../custom widget/app_continner.dart';
import '../../../custom widget/app_text.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    super.key,
    required this.onTab,
    required this.imageLink,
    required this.text,
    this.backround,
    this.colors,
    this.boxBorder, this.iColors,
  });
  final VoidCallback onTab;
  final String imageLink;
  final String text;
  final Color? backround;
  final Color? colors;
  final BoxBorder? boxBorder;
  final Color ? iColors;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: WidgetStateProperty.all(
        Colors.blue.withOpacity(0.2),
      ),
      // mouseCursor: MouseCursor.uncontrolled,
      // autofocus: true,

      onTap: onTab,
      child: AppContinner(
        pading: EdgeInsets.all(5),
        colors: backround ?? AppColors.sColors,
        height: 48,
        width: MediaQuery.sizeOf(context).width,
        boxBorder: boxBorder ?? Border.all(width: 1, color: Colors.grey),
        child: Row(
          spacing: 60,
          children: [
            Image.network(height: 25, width: 30, imageLink,color: iColors,),
            AppText(
              text: text,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              colors: colors ?? Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
