import 'package:flutter/material.dart';
import 'package:foodpanda/custom%20widget/app_button.dart';
import 'package:foodpanda/custom%20widget/app_continner.dart';
import 'package:foodpanda/custom%20widget/app_text.dart';
import 'package:foodpanda/identity/login/login_screen.dart';
import 'package:foodpanda/util/app_colors.dart';
import 'package:foodpanda/view/Profile/widget/menu_section.dart';
import 'package:foodpanda/view/Profile/widget/order_section.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(
          text: "Account",
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings_outlined)),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: "  Mahamudul Hasan",
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
              TextButton(
                onPressed: () {},
                child: AppText(
                  text: "View profile",
                  fontWeight: FontWeight.bold,
                  colors: AppColors.tColors,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          AppContinner(
            height: 100,
            width: MediaQuery.sizeOf(context).width,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                "https://images.deliveryhero.io/image/fd-bd/Landing-Page/How-to-deal/2022Oct_Top-Banner.png",
              ),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OrderSection(
                image: 'https://cdn-icons-png.flaticon.com/128/839/839860.png',
                text: 'Orders',
                onTab: () {},
              ),
              OrderSection(
                image:
                    'https://cdn-icons-png.flaticon.com/128/1077/1077035.png',
                text: 'Favourites',
                onTab: () {},
              ),
              OrderSection(
                image: 'https://cdn-icons-png.flaticon.com/128/535/535188.png',
                text: 'Addresses',
                onTab: () {},
              ),
            ],
          ),
          SizedBox(height: 10),
          AppText(
            text: "Wallet",
            fontWeight: FontWeight.bold,
            colors: AppColors.tColors,
            fontSize: 18,
          ),
          SizedBox(height: 10),
          AppContinner(
            pading: EdgeInsets.all(10),
            height: 70,
            width: MediaQuery.sizeOf(context).width,
            boxBorder: Border.all(width: 1, color: Colors.grey.shade400),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(text: "Refund Account", fontWeight: FontWeight.bold),
                AppText(text: "Tk 0"),
              ],
            ),
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: "Perks for you",
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              MenuSection(
                image:
                    'https://cdn-icons-png.flaticon.com/128/6826/6826425.png',
                text: 'Become a pro',
                onTab: () {},
              ),
              MenuSection(
                image: 'https://cdn-icons-png.flaticon.com/128/263/263056.png',
                text: 'panda rewards',
                onTab: () {},
              ),
              Divider(thickness: 1, color: Colors.grey.shade200),
              MenuSection(
                image:
                    'https://cdn-icons-png.flaticon.com/128/6737/6737610.png',
                text: 'Voucher',
                onTab: () {},
              ),
              Divider(thickness: 1, color: Colors.grey.shade200),
              MenuSection(
                image:
                    'https://cdn-icons-png.flaticon.com/128/8146/8146553.png',
                text: 'Invite friends',
                onTab: () {},
              ),
              SizedBox(height: 10),
              AppText(
                text: "General",
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              SizedBox(height: 10),
              MenuSection(
                image: 'https://cdn-icons-png.flaticon.com/128/471/471664.png',
                text: 'Help center',
                onTab: () {},
              ),

              Divider(thickness: 1, color: Colors.grey.shade200),
              MenuSection(
                image:
                    'https://cdn-icons-png.flaticon.com/128/1786/1786971.png',
                text: 'foodpanda for business',
                onTab: () {},
              ),
              Divider(thickness: 1, color: Colors.grey.shade200),
              MenuSection(
                image:
                    'https://cdn-icons-png.flaticon.com/128/10349/10349096.png',
                text: 'Terms & policies',
                onTab: () {},
              ),
            ],
          ),
          AppButton(
            onPressed: () {

            },
            bName: "Log out",
            bColors: Colors.white,
            bTextC: AppColors.tColors,
            borderSide: BorderSide(width: 1, color: AppColors.tColors),
          ),
          SizedBox(height: 15,),
          AppContinner(
            pading: EdgeInsets.all(10),
            height: 80,
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      spacing: 5,
                      children: [
                        Image.asset(
                          height: 30,
                          width: 30,
                          "assets/image/logo.png",
                        ),
                        AppText(
                          text: "foodpanda",
                          fontWeight: FontWeight.bold,
                          colors: AppColors.pColros,
                          fontSize: 18,
                        ),
                      ],
                    ),
                    Row(
                      spacing: 5,
                      children: [
                        Image.network(
                          height: 30,
                          width: 30,
                          "https://cdn-icons-png.flaticon.com/128/4240/4240615.png",
                        ),
                        AppText(
                          text: "Delivery Hero",
                          fontWeight: FontWeight.bold,
                          colors:Colors.red,
                          fontSize: 18,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(text: "Version 1.0.1")
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
