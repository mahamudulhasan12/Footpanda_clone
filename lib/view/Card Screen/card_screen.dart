import 'package:flutter/material.dart';
import 'package:foodpanda/custom%20widget/app_text.dart';
class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(text: "Card page"),
      ),
    );
  }
}

