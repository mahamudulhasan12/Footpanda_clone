import 'package:flutter/material.dart';
import 'package:foodpanda/custom%20widget/app_text.dart';
import 'package:foodpanda/util/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.pColros,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.location_on_outlined,color: AppColors.sColors,size: 30,)),
        title: AppText(text: "N580",fontWeight: FontWeight.bold,colors: AppColors.sColors,fontSize: 18,),
        centerTitle: false,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.heart_broken_outlined,color: AppColors.sColors,size: 30,)),
        ],
      ),
    );
  }
}
