import 'package:flutter/material.dart';
import 'package:foodpanda/custom%20widget/app_text.dart';
import 'package:foodpanda/custom%20widget/app_textfield.dart';
import 'package:foodpanda/util/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController search = TextEditingController();
  List image =[
    {
      "images": "https://cdn-icons-png.flaticon.com/128/8596/8596040.png",
      "text":"Here's 50% off & free \ndelivery on your first order !",
    },
    {
      "images": "https://cdn-icons-png.flaticon.com/128/3063/3063385.png",
      "text":"Here's 60% off & free \ndelivery on your first order !",
    },


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.pColros,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.location_on_outlined,
            color: AppColors.sColors,
            size: 30,
          ),
        ),
        title: AppText(
          text: "N580",
          fontWeight: FontWeight.bold,
          colors: AppColors.sColors,
          fontSize: 18,
        ),
        centerTitle: false,
        toolbarHeight: 60,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              color: AppColors.sColors,
              size: 30,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 50),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: AppTextField(
              controller: search,
              lText: AppText(text: "Search for restaurants",fontSize: 15,),
              isDense: true,
              pIcons: Icon(Icons.search_rounded,size: 30,),
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide.none,
              fillColor: AppColors.sColors,
              filled: true,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          CarouselSlider(items: image.map((i){
            return Builder(builder: (BuildContext context){
              return Padding(
                padding:EdgeInsets.symmetric(),
                child: Container(
                  padding: EdgeInsets.only(left: 10,right: 10,top: 10),

                  width: double.infinity,
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(5),
                    color: AppColors.pColros
                  ),
                  child: Row(
                    spacing: 20,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(text: "${i["text"]}",fontSize: 16,fontWeight: FontWeight.bold,colors: Colors.white,),
                          TextButton(onPressed: (){}, child: AppText(text: "Start ordering",fontSize: 10,colors: Colors.white,worldSpacing: 2,))
                        ],
                      ),
                      Image.network(
                        height: 100,
                          width: 80,
                          "${i['images']}"
                      ),
                    ],
                  )
                ),
              );
            });
          }).toList(), options: CarouselOptions(
            height: 110,

            aspectRatio: 0.99,
            viewportFraction: .99,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 30),
            // autoPlayAnimationDuration: Duration(milliseconds: 800),
            // autoPlayCurve: Curves.fastOutSlowIn,
            // enlargeCenterPage: true,
            // enlargeFactor: 0.3,

            scrollDirection: Axis.horizontal,
          ))
         ]
      ),
    );
  }
}
