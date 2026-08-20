import 'package:flutter/material.dart';

import '../../../custom widget/app_text.dart';
import '../../../custom widget/app_textfield.dart';
import '../../../util/app_colors.dart';

class HomeScreenAppBar extends StatelessWidget implements PreferredSize{
  const HomeScreenAppBar({
    super.key,
    required this.search, this.leading,
  });

  final TextEditingController search;
  final Widget ? leading;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.pColros,

      leading: leading,
      title: Row(
        spacing: 5,
        children: [
          Icon(Icons.location_on_outlined,color: AppColors.sColors),
          AppText(
            text: "N580",
            fontWeight: FontWeight.bold,
            colors: AppColors.sColors,
            fontSize: 18,
          ),
        ],
      ),
      centerTitle: false,
      // toolbarHeight: 80,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite_border,
            color: AppColors.sColors,
            size: 30,
          ),
        ),
      ],
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, 40),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: AppTextField(
            controller: search,
            lText: AppText(text: "Search"),
            hTStyle: TextStyle(
              fontSize: 15,
              color: Colors.blue
            ),
            isDense: true,
            pIcons: Icon(Icons.search_rounded, size: 30),
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide.none,
            fillColor: AppColors.sColors,
            filled: true,
          ),
        ),
      ),
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 50);

  @override
  Widget get child => throw UnimplementedError();

}