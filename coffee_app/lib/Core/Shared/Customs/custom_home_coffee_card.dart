import 'package:coffee_app/Core/Constants/colors_const.dart';
import 'package:coffee_app/Core/Models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHomeCoffeeCard extends StatelessWidget {
  const CustomHomeCoffeeCard({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 16,
          bottom: 16,
          left: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                productModel.imageUrl!,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              productModel.title!,
              style: GoogleFonts.nunito(
                color: ConstColors.blackColor,
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              productModel.subTitle!,
              style: GoogleFonts.nunito(
                color: ConstColors.greyColor,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              productModel.price!,
              style: GoogleFonts.nunito(
                color: ConstColors.blackColor,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }
}
