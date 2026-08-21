import 'package:flutter/material.dart';

import '../../../custom widget/app_text.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({
    super.key, required this.image, required this.text, required this.onTab,
  });
  final String image;
  final String text;
  final VoidCallback onTab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: ListTile(
        leading: Image.network(
            height: 20,
            width: 30,
            image),
        title: AppText(text: text),
        trailing: Icon(Icons.arrow_forward_ios_outlined,size: 18,),
      ),
    );
  }
}