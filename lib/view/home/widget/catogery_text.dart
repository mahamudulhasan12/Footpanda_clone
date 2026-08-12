import 'package:flutter/material.dart';

import '../../../custom widget/app_text.dart';
import '../../../util/app_colors.dart';

class CatogeryText extends StatelessWidget {
  const CatogeryText({
    super.key, required this.text, required this.onTab, this.icons,
  });
  final String text;
  final VoidCallback onTab;
  final IconData ? icons;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppText(
          text: text,
          fontWeight: FontWeight.bold,
          colors: AppColors.tColors,
          fontSize: 17,
        ),
        InkWell(
          onTap: onTab,
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              // color: Colors.blue,
              shape: BoxShape.circle,
              border: Border.all(width: 1, color: Colors.grey),
            ),
            child: Icon(icons ?? Icons.arrow_forward_ios_outlined, size: 20),
          ),
        ),
      ],
    );
  }
}