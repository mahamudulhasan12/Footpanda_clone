import 'package:flutter/material.dart';
import 'package:foodpanda/custom%20widget/app_text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: AppText(text: "Profile Screen",fontSize: 25,fontWeight: FontWeight.bold,),
      ),
    );
  }
}
