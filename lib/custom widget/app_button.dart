import 'package:flutter/material.dart';

import '../util/app_colors.dart';
import 'app_text.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onPressed,
    required this.bName,
    this.bTextC,
    this.bSize,
    this.bColors,
    this.borderradius, this.maxSize, this.borderSide,

  });
  final VoidCallback onPressed;
  final String bName;
  final Color? bTextC;
  final Size? bSize;
  final Color? bColors;
  final BorderRadiusGeometry? borderradius;
  final Size ? maxSize;
  final BorderSide ? borderSide;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,

      style: ElevatedButton.styleFrom(
        minimumSize: bSize ?? Size(330, 50),
        maximumSize: maxSize,
        shape: RoundedRectangleBorder(
          borderRadius: borderradius ?? BorderRadius.circular(10),
        ),
        side: borderSide,
        backgroundColor: bColors ?? AppColors.pColros,
        foregroundColor: Colors.grey,
        overlayColor: Colors.grey,
      ),
      child: AppText(
        text: bName,
        fontSize: 15,
        fontWeight: FontWeight.bold,
        colors: bTextC ?? AppColors.sColors,
      ),
    );
  }
}
