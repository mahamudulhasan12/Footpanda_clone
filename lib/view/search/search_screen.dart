import 'package:flutter/material.dart';

import '../../custom widget/app_text.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppText(text: "Search",fontSize: 25,fontWeight: FontWeight.bold,),
      ),
    );
  }
}
