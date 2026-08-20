import 'package:flutter/material.dart';
import 'package:foodpanda/custom%20widget/app_textfield.dart';

import '../../custom widget/app_text.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppTextField(controller: search,pIcons: Icon(Icons.search_rounded,size: 30,),hindText:"Search for food",isDense: true,fillColor: Colors.white,),
        ),

      ),
    );
  }
}
