import 'package:flutter/material.dart';
import 'package:foodpanda/custom%20widget/app_button.dart';
import 'package:foodpanda/custom%20widget/app_text.dart';
import 'package:foodpanda/custom%20widget/app_textfield.dart';
import 'package:foodpanda/identity/login/continue%20password/your_email_passworld.dart';
import 'package:foodpanda/util/app_colors.dart';

class PhoneVerifiedScreen extends StatefulWidget {
  const PhoneVerifiedScreen({super.key});

  @override
  State<PhoneVerifiedScreen> createState() => _PhoneVerifiedScreenState();
}

class _PhoneVerifiedScreenState extends State<PhoneVerifiedScreen> {
  bool isShow = true;
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.only(left: 10,right: 10),
        children: [
          AppText(text: "What's your Phone Number?",fontSize: 20,fontWeight: FontWeight.bold,colors: AppColors.tColors,),
          AppText(text: "Well's check if your have an accound",fontSize: 13,fontWeight: FontWeight.bold,colors: Colors.grey,),
          SizedBox(height: 20,),
          AppTextField(controller: pass, lText: AppText(text: "Phone Number"),isDense: true,inputType: TextInputType.emailAddress,pIcons: Icon(Icons.email_outlined,color: AppColors.pColros,),),
          SizedBox(height: 520,),
          AppButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>PhoneVerifiedScreen()));
          }, bName: "Continue",)
        ],
      ),
    );
  }
}
