import 'package:coffee_app/Core/Constants/colors_const.dart';
import 'package:coffee_app/Core/Models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCategoriesCard extends StatelessWidget {
  const CustomCategoriesCard({
    super.key,
    required this.productModel,
    required this.onTap,
  });
  final Function()? onTap;
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                productModel.imageUrl!,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productModel.title!,
                  style: GoogleFonts.nunito(
                    color: ConstColors.blackColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  productModel.subTitle!,
                  style: GoogleFonts.nunito(
                    color: ConstColors.greyColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
