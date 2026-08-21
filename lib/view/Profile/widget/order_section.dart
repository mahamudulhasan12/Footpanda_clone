import 'package:flutter/material.dart';

import '../../../custom widget/app_continner.dart';
import '../../../custom widget/app_text.dart';

class OrderSection extends StatelessWidget {
  const OrderSection({
    super.key, required this.image, required this.text, required this.onTab,
  });
  final String image;
  final String text;
  final VoidCallback onTab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: AppContinner(
        height: 100,
        width: 100,
        borderRadius: BorderRadius.circular(10),
        boxBorder: Border.all(width: 1,color: Colors.grey.shade300),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 3,
          children: [
            Image.network(
                height: 30,
                width: 30,
                image
            ),
            AppText(text: text),
          ],
        ),
      ),
    );
  }
}