import 'package:flutter/material.dart';

import 'package:foodpanda/view/home/widget/home_screen_appbar.dart';

class GroceryScreen extends StatefulWidget {
  const GroceryScreen({super.key});

  @override
  State<GroceryScreen> createState() => _GroceryScreenState();
}

class _GroceryScreenState extends State<GroceryScreen> {
  TextEditingController grocery = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:HomeScreenAppBar(search: grocery) ,
    );
  }
}