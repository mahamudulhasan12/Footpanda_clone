import 'package:flutter/material.dart';
import 'package:foodpanda/custom%20widget/app_text.dart';
import 'package:foodpanda/view/home/home_screen.dart';

import '../../custom widget/app_button.dart';
class CardScreen extends StatefulWidget {
  const CardScreen({super.key, required this.onBrowser});
  final VoidCallback onBrowser;
  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(text: "All carts",fontWeight: FontWeight.bold,fontSize: 18,),
            Row(
              spacing: 10,
              children: [
                AppText(text: "Deliver to :"),
                AppText(text: "N508,Dinajpur,Bangladesh",fontWeight: FontWeight.bold,),
              ],
            )
          ],
        )
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 15,right: 15,top: 100),
        children: [
          Image.network(
              height: 130,
              width: 70,
              "https://images.deliveryhero.io/image/foodpanda/city-page/refresh-hero-city-bd.png"),
          SizedBox(height: 50,),
          Center(child: AppText(text: "Hungry?",fontSize: 26,fontWeight: FontWeight.bold,)),
          SizedBox(height: 15,),
          Center(child: AppText(text: "You haven't added anything to your card!",fontSize: 14,colors: Colors.grey,)),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButton(onPressed: widget.onBrowser, bName: "Browser",bSize: Size(170, 40),),
            ],
          )
        ],
      ),
    );
  }
}

