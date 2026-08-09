import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:foodpanda/custom%20widget/app_button.dart';
import 'package:foodpanda/custom%20widget/app_text.dart';
import 'package:foodpanda/custom%20widget/app_textfield.dart';
import 'package:foodpanda/identity/login/ProfileName%20set/profile_set_screen.dart';
import 'package:foodpanda/util/app_colors.dart';

class YourEmailPassword extends StatefulWidget {
  const YourEmailPassword({super.key});

  @override
  State<YourEmailPassword> createState() => _YourEmailPasswordState();
}

class _YourEmailPasswordState extends State<YourEmailPassword> {
  bool isShow= true;
  void Visible(){
    setState(() {
      isShow =! isShow;
    });
  }
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.only(left: 10, right: 10),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Image.network(
                  color: AppColors.pColros,
                  "https://cdn-icons-png.flaticon.com/128/16136/16136234.png",
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          AppText(
            text: "Login in wiht your email",
            fontSize: 20,
            fontWeight: FontWeight.bold,
            colors: AppColors.tColors,
          ),
          SizedBox(height: 15),
          AppText(
            text:
                "log in with your passworld to email or get a login link via email",
            fontSize: 13,
            fontWeight: FontWeight.bold,
            colors: Colors.grey,
          ),
          SizedBox(height: 20),
          AppTextField(
            controller: pass,
            obscureText: isShow,
            lText: AppText(text: "password"),
            isDense: true,
            inputType: TextInputType.emailAddress,
            sIcons: IconButton(onPressed: (){
              setState(() {
                Visible();
              });
            },  icon: Icon(
              isShow
                  ? Icons.visibility_off
                  : Icons.visibility,
            ),),
            // onTab: (){
            //   setState(() {
            //     isShow =! isShow;
            //
            //   });
            // },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {},
                child: AppText(
                  text: "I forgot my password?",
                  fontWeight: FontWeight.bold,
                  colors: AppColors.pColros,
                ),
              ),
            ],
          ),

          SizedBox(height: 300),
          AppButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileSetScreen()));
          }, bName: "Login With Password"),
          SizedBox(height: 10),
          AppButton(
            onPressed: () {},
            bName: "Send me a login link",
            bTextC: AppColors.pColros,
            bColors: Colors.white,
          ),
        ],
      ),
    );
  }
}
