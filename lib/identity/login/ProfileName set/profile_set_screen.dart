import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:foodpanda/custom%20widget/app_button.dart';
import 'package:foodpanda/custom%20widget/app_text.dart';
import 'package:foodpanda/custom%20widget/app_textfield.dart';
import 'package:foodpanda/util/app_colors.dart';

class ProfileSetScreen extends StatefulWidget {
  const ProfileSetScreen({super.key});

  @override
  State<ProfileSetScreen> createState() => _ProfileSetScreenState();
}

class _ProfileSetScreenState extends State<ProfileSetScreen> {
  bool isShow= true;
  void Visible(){
    setState(() {
      isShow =! isShow;
    });
  }
  TextEditingController fNmae = TextEditingController();
  TextEditingController lName = TextEditingController();
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
                radius: 20,
                backgroundColor: Colors.red.shade100,
                child: Image.network(
                  height: 30,
                  width: 30,
                  color: AppColors.pColros,
                  "https://cdn-icons-png.flaticon.com/128/1077/1077114.png",
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          AppText(
            text: "Let's get you started!",
            fontSize: 20,
            fontWeight: FontWeight.bold,
            colors: AppColors.tColors,
          ),
          SizedBox(height: 15),
          AppText(
            text:
            "First lets create your foodpanda account with mahamudulhasanmunna459@gmail.com",
            fontSize: 13,
            fontWeight: FontWeight.bold,
            colors: Colors.grey,
          ),
          SizedBox(height: 20,),
          Row(
            spacing: 8,
            children: [
              Expanded(child: AppTextField(controller: fNmae, lText: AppText(text: "First Name"),)),
              Expanded(child: AppTextField(controller: lName, lText: AppText(text: "Last Name"),)),
            ],
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
          ),
          SizedBox(height: 350),
          AppButton(onPressed: () {

          }, bName: "Continue"),
        ],
      ),
    );
  }
}
