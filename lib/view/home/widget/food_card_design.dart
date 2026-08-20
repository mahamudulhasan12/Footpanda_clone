import 'package:flutter/material.dart';
import 'package:foodpanda/Model/p_model.dart';
import 'package:foodpanda/custom%20widget/app_top_snackbar.dart';
import '../../../custom widget/app_continner.dart';
import '../../../custom widget/app_text.dart';
import '../../../util/app_colors.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';

class FoodCardDesign extends StatelessWidget {
  const FoodCardDesign({super.key, required this.product, });
  final PModel product;

  @override
  Widget build(BuildContext context) {
    return AppContinner(
      height: 265,
      width: 300,
      child: Column(
        children: [
          AppContinner(
            height: 150,
            width: MediaQuery.sizeOf(context).width,
            // colors: Colors.blue,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                product.image
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 18,
                    child: IconButton(
                      onPressed: () {
                        showTopSnackBar(
                          Overlay.of(context),
                           AppTopSnackBar(
                            title: "Success",
                            message: "View this product!",
                            icon: Icons.check_circle,
                          ),
                        );

                      },
                      icon: Icon(
                        Icons.favorite_border,
                        color: AppColors.tColors,
                      ),
                      color: AppColors.sColors,
                    ),
                  ),
                  AppContinner(
                    height: 17,
                    width: 40,
                    borderRadius: BorderRadius.circular(8),
                    colors: AppColors.tColors,
                    alignment: Alignment.center,
                    child: AppText(
                      text: "Ad",
                      colors: AppColors.sColors,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      text: "${product.rName}",
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      spacing: 2,
                      children: [
                        Icon(Icons.star, color: Colors.orange, size: 16),
                        AppText(
                          text: product.pRating,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        AppText(
                          text: "(${product.pSellCount}+)",
                          colors: Colors.grey,
                          fontSize: 13,
                        ),
                      ],
                    ),
                  ],
                ),
                AppText(text: "From ${product.pTime} min .৳৳ ${product.pName}", colors: Colors.grey),
                Row(
                  spacing: 5,
                  children: [
                    Icon(Icons.delivery_dining),
                    AppText(
                      text: "TK ${product.pDiscount}",
                      colors: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                    ),
                    AppText(
                      text: "Free for first order",
                      colors: AppColors.pColros,
                    ),
                  ],
                ),
                AppContinner(
                  pading: EdgeInsets.all(2),
                  height: 25,
                  width: 197,
                  borderRadius: BorderRadius.circular(15),
                  colors: Colors.red.shade100,
                  alignment: Alignment.center,

                  child: Row(
                    spacing: 5,
                    children: [
                      Icon(
                        Icons.verified_outlined,
                        color: AppColors.pColros,
                        size: 15,
                      ),
                      AppText(
                        text: "Limited time: Save",
                        fontWeight: FontWeight.bold,
                        colors: AppColors.pColros,
                      ),
                      AppText(
                        text: "${product.pSave}%",
                        fontWeight: FontWeight.bold,
                        colors: AppColors.pColros,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
