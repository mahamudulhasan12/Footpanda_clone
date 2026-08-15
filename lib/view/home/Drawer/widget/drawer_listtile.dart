import 'package:flutter/material.dart';

import '../../../../custom widget/app_text.dart';
import '../../../../util/app_colors.dart';

class DarwerListTile extends StatelessWidget {
  const DarwerListTile({
    super.key, required this.icons, required this.iText, required this.onTab,
  });
  final IconData icons;
  final String iText;
  final VoidCallback onTab;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: onTab,
      child: ListTile(
          leading: Icon(icons,color: AppColors.pColros,),
          title: AppText(text: iText,fontWeight: FontWeight.bold,colors: AppColors.tColors,fontSize: 13,)
      ),
    );
  }
}