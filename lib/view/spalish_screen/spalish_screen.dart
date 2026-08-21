import 'package:flutter/material.dart';
import 'package:foodpanda/identity/login/login_screen.dart';
import 'package:foodpanda/util/app_colors.dart';

class SpalishScreen extends StatefulWidget {
  const SpalishScreen({super.key});

  @override
  State<SpalishScreen> createState() => _SpalishScreenState();
}

class _SpalishScreenState extends State<SpalishScreen> {
  @override
  void initState() {
   toNextScreen(context);
    super.initState();
  }
  Future toNextScreen(BuildContext context)async{
    Future.delayed(Duration(seconds: 1)).then((_){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD70F64),
      body: Center(
        child: Image.asset(
          height: 90,
            width: 90,
            "assets/image/logo.png", color: AppColors.sColors
        ),
      ),
    );
  }
}
