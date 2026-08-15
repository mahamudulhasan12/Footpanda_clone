import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:foodpanda/custom%20widget/app_continner.dart';
import 'package:foodpanda/custom%20widget/app_text.dart';
import 'package:foodpanda/custom%20widget/app_textfield.dart';
import 'package:foodpanda/identity/login/login_screen.dart';

import 'package:foodpanda/util/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:foodpanda/view/Card%20Screen/card_screen.dart';
import 'package:foodpanda/view/Grocery%20Item/grocery_screen.dart';
import 'package:foodpanda/view/Profile/profile_screen.dart';
import 'package:foodpanda/view/home/widget/catogery_text.dart';
import 'package:foodpanda/view/home/widget/food_card_design.dart';
import 'package:foodpanda/view/home/widget/home_screen_appbar.dart';
import 'package:foodpanda/view/search/search_screen.dart';

import '../../Model/local database/offer_data/OfferData.dart';
import 'Drawer/widget/drawer_listtile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController search = TextEditingController();

  int cPage = 0;
  List image = [
    {
      "images": "https://cdn-icons-png.flaticon.com/128/8596/8596040.png",
      "text": "Here's 50% off & free \ndelivery on your first order !",
    },
    {
      "images": "https://cdn-icons-png.flaticon.com/128/3063/3063385.png",
      "text": "Here's 60% off & free \ndelivery on your first order !",
    },
  ];

  List data = Offerdata.offer;
  List foods = Offerdata.food;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pColros,
      appBar: HomeScreenAppBar(search: search),
      body: ListView(
        children: [
          CarouselSlider(
            items: image.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Padding(
                    padding: EdgeInsets.symmetric(),
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(5),
                        color: AppColors.pColros,
                      ),
                      child: Stack(
                        children: [
                          Row(
                            spacing: 20,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AppText(
                                    text: "${i["text"]}",
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    colors: Colors.white,
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: AppText(
                                      text: "Start ordering",
                                      fontSize: 10,
                                      colors: Colors.white,
                                      worldSpacing: 2,
                                    ),
                                  ),
                                ],
                              ),
                              Image.network(
                                height: 100,
                                width: 80,
                                "${i['images']}",
                              ),
                            ],
                          ),
                          Positioned(
                            bottom: 5,
                            left: 150,
                            child: buildCarasoulIndicator(),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              height: 110,

              aspectRatio: 0.99,
              viewportFraction: .99,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              scrollDirection: Axis.horizontal,
              onPageChanged: (value, _) {
                setState(() {
                  cPage = value;
                });
              },
            ),
          ),
          AppContinner(
            pading: EdgeInsets.only(left: 10, right: 10, top: 30),
            width: MediaQuery.sizeOf(context).width,
            height: 3770,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            colors: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return AppContinner(
                        height: 90,
                        width: 90,
                        borderRadius: BorderRadius.circular(10),
                        child: Column(
                          children: [
                            Image.network(
                              height: 50,
                              width: 50,
                              "${data[index]['image']}",
                            ),
                            AppText(
                              text: "${data[index]['text']}",
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 5),
                            Divider(thickness: 1, color: Colors.grey.shade300),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 90,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: foods.length,
                    itemBuilder: (context, index) {
                      return AppContinner(
                        height: 90,
                        width: 90,
                        borderRadius: BorderRadius.circular(10),
                        child: Column(
                          children: [
                            Image.network(
                              height: 50,
                              width: 50,
                              "${foods[index]['image']}",
                            ),
                            AppText(
                              text: "${foods[index]['text']}",
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 5),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                CatogeryText(text: 'Popular Restaurants', onTab: () {}),
                SizedBox(height: 10),
                SizedBox(
                  height: 272,
                  child: ListView.builder(
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: FoodCardDesign(),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                CatogeryText(text: 'First delivery', onTab: () {}),
                SizedBox(height: 15),
                SizedBox(
                  height: 272,
                  child: ListView.builder(
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: FoodCardDesign(),
                      );
                    },
                  ),
                ),
                CatogeryText(
                  text: 'Explore restaurants nearby',
                  onTab: () {},
                  icons: Icons.arrow_downward,
                ),
                SizedBox(height: 15),
                ListView.builder(
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: FoodCardDesign(),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        width: 275,
        child: AppContinner(
          width: MediaQuery.sizeOf(context).width,
          borderRadius: BorderRadius.circular(5),
          colors: AppColors.sColors,
          child: Column(
            children: [
              AppContinner(
                height: 200,
                width: MediaQuery.sizeOf(context).width,
                borderRadius: BorderRadius.circular(5),
                colors: AppColors.pColros,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 55),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppContinner(
                            height: 60,
                            width: 60,
                            borderRadius: BorderRadius.circular(30),
                            colors: Colors.white,
                            image: DecorationImage(
                              image: NetworkImage(
                                "https://static.vecteezy.com/system/resources/thumbnails/024/183/525/small/avatar-of-a-man-portrait-of-a-young-guy-illustration-of-male-character-in-modern-color-style-vector.jpg",
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.edit),
                            color: AppColors.tColors,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      AppText(
                        text: "Gest User",
                        fontWeight: FontWeight.bold,
                        colors: AppColors.sColors,
                        overflow: TextOverflow.ellipsis,
                      ),
                      AppText(
                        text: "user@gamil.com",
                        colors: AppColors.sColors,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
              DarwerListTile(
                icons: Icons.local_offer_outlined,
                iText: 'Valuchers & Offers',
                onTab: () {},
              ),
              DarwerListTile(
                icons: Icons.favorite_border,
                iText: 'Favorites',
                onTab: () {},
              ),
              DarwerListTile(
                icons: Icons.bookmark_border_rounded,
                iText: 'Orders & recording',
                onTab: () {},
              ),
              DarwerListTile(
                icons: Icons.location_on_outlined,
                iText: 'Address',
                onTab: () {},
              ),
              DarwerListTile(
                icons: Icons.payment,
                iText: 'Payment methods',
                onTab: () {},
              ),
              DarwerListTile(
                icons: Icons.help_center_outlined,
                iText: 'Help center',
                onTab: () {},
              ),
              DarwerListTile(
                icons: Icons.card_giftcard,
                iText: 'Invite friends',
                onTab: () {

                },
              ),
              Divider(
                thickness: 2,
                color: Colors.grey.shade300,
              ),
              ListTile(
                leading: TextButton(onPressed: (){}, child: AppText(text: "Settings",fontWeight: FontWeight.bold,colors: AppColors.tColors,)),
              ),
              ListTile(
                leading: AppText(text: "Temes & condition privacy",fontSize: 10,),
              )
            ],
          ),
        ),
      ),
    );
  }

  buildCarasoulIndicator() {
    return Row(
      children: [
        for (int i = 0; i < image.length; i++)
          Container(
            margin: EdgeInsets.all(5),
            height: i == cPage ? 8 : 5,
            width: i == cPage ? 30 : 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              // shape: BoxShape.circle,
              color: i == cPage ? Colors.blue : Colors.grey,
            ),
          ),
      ],
    );
  }
}
