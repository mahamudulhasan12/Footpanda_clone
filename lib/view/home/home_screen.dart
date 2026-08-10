import 'package:flutter/material.dart';
import 'package:foodpanda/custom%20widget/app_continner.dart';
import 'package:foodpanda/custom%20widget/app_text.dart';
import 'package:foodpanda/custom%20widget/app_textfield.dart';
import 'package:foodpanda/identity/login/login_screen.dart';
import 'package:foodpanda/local%20database/offer_data/OfferData.dart';
import 'package:foodpanda/util/app_colors.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
  List foods =Offerdata.food;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pColros,
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
              lText: AppText(text: "Search for restaurants", fontSize: 15),
              isDense: true,
              pIcons: Icon(Icons.search_rounded, size: 30),
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
            pading: EdgeInsets.only(left: 15, right: 15, top: 30),
            width: MediaQuery.sizeOf(context).width,
            height: 800,
            borderRadius: BorderRadius.circular(20),
            colors: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                  child: ListView.builder(

                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                      itemBuilder: (context , index){
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
                          AppText(text: "${data[index]['text']}",fontWeight: FontWeight.bold,overflow:TextOverflow.ellipsis,),SizedBox(height: 5,),
                          Divider(thickness: 1,color: Colors.grey.shade300,),

                        ],
                      ),
                    );
                  }),
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: foods.length,
                      itemBuilder: (context , index){
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
                              AppText(text: "${foods[index]['text']}",overflow:TextOverflow.ellipsis,),SizedBox(height: 5,),

                            ],
                          ),
                        );
                      }),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(text: "Popular Restaurants",fontWeight: FontWeight.bold,colors: AppColors.tColors,fontSize: 17,),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          // color: Colors.blue,
                          shape: BoxShape.circle,
                          border: Border.all(width: 1,color: Colors.grey),
                        ),
                        child: Icon(Icons.arrow_forward_ios_outlined,size: 20,),
                      ),
                    )

                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index){
          setState(() {
            HomeScreen();
            LoginScreen();
          });
        },
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.pColros,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Food"),
          BottomNavigationBarItem(icon: Icon(Icons.local_grocery_store),label: "Grocery"),
          BottomNavigationBarItem(icon: Icon(Icons.search_outlined),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel_sharp),label: "Carts",),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: "Accounts"),

        ],
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
