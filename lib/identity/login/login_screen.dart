import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:foodpanda/custom%20widget/app_continner.dart';
import 'package:foodpanda/custom%20widget/app_text.dart';
import 'package:foodpanda/identity/login/Email/email_verify_screeen.dart';
import 'package:foodpanda/identity/login/continue%20email/your_email_screen.dart';
import 'package:foodpanda/identity/login/continue%20phone/phone_verified_screen.dart';
import 'package:foodpanda/identity/login/widget/continue_button.dart';
import 'package:foodpanda/util/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pColros,
      body: ListView(
        padding: EdgeInsets.only(top: 80),
        children: [
          Padding(
            padding: EdgeInsets.only(left: 35, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      text: "Here's 50% off",
                      fontWeight: FontWeight.bold,
                      colors: Colors.white,
                      fontSize: 30,
                      fontFamily: "StackSansHeadline",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      text: " & free delivery ",
                      fontWeight: FontWeight.bold,
                      colors: Colors.white,
                      fontSize: 30,
                      fontFamily: "StackSansHeadline",
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      text: "on your first order!",
                      fontWeight: FontWeight.bold,
                      colors: Colors.white,
                      fontSize: 30,
                      fontFamily: "StackSansHeadline",
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            // height: 150,
            // width: 60,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Image.network(
              height: 180,
              width: 60,
              "https://images.deliveryhero.io/image/foodpanda/web-acquisition/fp/rlp-nc-banner-logo-mweb.webp",
            ),
          ),
          // SizedBox(height: 50,),
          AppContinner(
            pading: EdgeInsets.only(top: 20, left: 15, right: 15),
            height: 420,
            width: double.infinity,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            colors: Colors.white,
            boxBorder: Border.all(width: 0.5, color: Colors.grey),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: "Sing Up or Log in",
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                AppText(
                  text: "Select your profrom method to continue",
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                  colors: Colors.grey,
                ),
                SizedBox(height: 10),
                ContinueButton(
                  onTab: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>EmailVerifyScreeen()));
                    setState(() {
                      isActive !=isActive;
                    });
                  },
                  imageLink:
                      "https://cdn-icons-png.flaticon.com/128/300/300221.png",
                  text: 'Countinue with google',
                  backround: isActive ? AppColors.pColros : Colors.white,
                ),
                SizedBox(height: 10),
                ContinueButton(
                  onTab: () {},
                  imageLink:
                      "https://cdn-icons-png.flaticon.com/128/15047/15047435.png",
                  text: "Continue with Facebook",
                  backround: Colors.blue,
                  colors: Colors.white,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(height: 1, width: 130, color: Colors.grey),
                    AppText(text: "or", colors: Colors.grey),
                    Container(height: 1, width: 130, color: Colors.grey),
                  ],
                ),
                SizedBox(height: 10),
                ContinueButton(
                  onTab: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>YourEmailScreen()));
                  },
                  imageLink:
                      "https://cdn-icons-png.flaticon.com/128/646/646094.png",
                  text: "Continue with email",
                  iColors: AppColors.pColros,
                  backround: Colors.white,
                  colors: AppColors.pColros,
                  boxBorder: Border.all(width: 1,color: AppColors.pColros),
                ),
                SizedBox(height: 15,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PhoneVerifiedScreen()));
                  },
                  child: Row(
                    spacing: 5,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.local_phone_outlined),
                      AppText(text: "Phone Number",fontWeight: FontWeight.bold,)
                    ],
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppText(text: "By continueing , you aggree to our Terms andConditions \nand Privacy Policy",fontSize: 12,)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
