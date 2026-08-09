import 'package:flutter/material.dart';
import 'package:foodpanda/custom%20widget/app_button.dart';
import 'package:foodpanda/custom%20widget/app_text.dart';
import 'package:foodpanda/util/app_colors.dart';

class EmailVerifyScreeen extends StatefulWidget {
  const EmailVerifyScreeen({super.key});

  @override
  State<EmailVerifyScreeen> createState() => _EmailVerifyScreeenState();
}

class _EmailVerifyScreeenState extends State<EmailVerifyScreeen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(left: 10, right: 10, top: 100),
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: Image.network(
              color: AppColors.pColros,
              "https://cdn-icons-png.flaticon.com/128/16136/16136234.png",
            ),
          ),
          SizedBox(height: 25),
          Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Verify your email address to get started",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.tColors,
                      fontSize: 18,
                    ),
                  ),
                  TextSpan(
                    text:
                        "\nthis help us to mitigate fraud and keep your personal data safe",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      height: 2.5, // line spacing
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 470,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppButton(onPressed: (){},bName: "Send Verification email",)
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

