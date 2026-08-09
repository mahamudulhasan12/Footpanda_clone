import 'package:flutter/material.dart';
import 'package:foodpanda/custom%20widget/app_button.dart';
import 'package:foodpanda/custom%20widget/app_continner.dart';
import 'package:foodpanda/custom%20widget/app_text.dart';
import 'package:foodpanda/util/app_colors.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 10, right: 10, top: 100),
        children: [
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                AppContinner(
                  height: 180,
                  width: 120,
                  child: Image.network(
                    "https://images.deliveryhero.io/image/foodpanda/web-acquisition/fp/rlp-nc-banner-logo-mweb.webp",
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: -20,
                  child: AppContinner(
                    height: 100,
                    width: 80,
                    child: Image.network(
                      color: AppColors.pColros,
                      "https://cdn-icons-png.flaticon.com/128/535/535239.png",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppText(
                text: "Allow location access on the next screen for :",
                fontWeight: FontWeight.bold,
                colors: AppColors.tColors,
                fontSize: 18,
              ),
              Row(
                spacing: 10,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.red.shade100,
                    child: Image.network(
                      height: 20,
                      width: 20,
                      color: AppColors.pColros,
                      "https://cdn-icons-png.flaticon.com/128/5637/5637217.png",
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              "Finding the best restaurants and shos near your",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 10,
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.red.shade100,
                    child: Image.network(
                      height: 20,
                      width: 20,
                      color: AppColors.pColros,
                      "https://cdn-icons-png.flaticon.com/128/845/845022.png",
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              "Faster and more accurate delivery",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 320,),
          AppButton(onPressed: (){}, bName: "Continue",borderradius: BorderRadius.circular(30),)
        ],
      ),
    );
  }
}
