import 'package:flutter/material.dart';
import 'package:foodpanda/custom%20widget/app_button.dart';
import 'package:foodpanda/custom%20widget/app_text.dart';

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
      body: ListView(
        padding: EdgeInsets.only(left: 15,right: 15,top: 100),
        children: [
          Image.network(
            height: 130,
              width: 70,
              "https://images.deliveryhero.io/image/foodpanda/web-acquisition/fp/rlp-nc-banner-logo-mweb.webp"),
          SizedBox(height: 50,),
          Center(child: AppText(text: "We're not in your area yet",fontSize: 26,fontWeight: FontWeight.bold,)),
          SizedBox(height: 15,),
          Center(child: AppText(text: "check back later or try entering a different location",fontSize: 14,colors: Colors.grey,)),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButton(onPressed: (){}, bName: "Change location",bSize: Size(170, 40),),
            ],
          )
        ],
      ),
    );
  }
}