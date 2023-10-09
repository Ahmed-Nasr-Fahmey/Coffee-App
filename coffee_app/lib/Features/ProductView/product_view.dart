import 'package:coffee_app/Core/Constants/colors_const.dart';
import 'package:coffee_app/Core/Models/product_model.dart';
import 'package:coffee_app/Core/Shared/Customs/custom_main_button.dart';
import 'package:coffee_app/Core/Shared/widgets/added_to_cart_alert.dart';
import 'package:coffee_app/Core/Shared/widgets/cart_chouces.dart';
import 'package:coffee_app/Core/Shared/widgets/coffee_sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});
  static const String routeName = "ProductView";

  @override
  Widget build(BuildContext context) {
    ProductModel productModel =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
                  ),
                  child: Image.network(
                    productModel.imageUrl!,
                    height: 310,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  left: 20,
                  top: 50,
                  child: Icon(Icons.arrow_back_ios,
                      color: ConstColors.backgroundColor),
                ),
                const Positioned(
                  right: 20,
                  top: 50,
                  child:
                      Icon(Icons.favorite, color: ConstColors.backgroundColor),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    productModel.title!,
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF373E43),
                    ),
                  ),
                  Text(
                    productModel.subTitle!,
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF373E43),
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star_purple500_outlined,
                          color: Color(0xFFFFA500)),
                      const Icon(Icons.star_purple500_outlined,
                          color: Color(0xFFFFA500)),
                      const Icon(Icons.star_purple500_outlined,
                          color: Color(0xFFFFA500)),
                      const Icon(Icons.star_purple500_outlined,
                          color: ConstColors.greyColor),
                      const Icon(Icons.star_purple500_outlined,
                          color: ConstColors.greyColor),
                      const SizedBox(width: 12),
                      Text(
                        "(3.0)",
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: ConstColors.greyColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Text(
                    "Description",
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF373E43),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Tasteful and flavorful icecream coffee. Ice cream with whipped cream and caramel syrup.",
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF373E43),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Choose your size",
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF373E43),
                        ),
                      ),
                      const CoffeeSizes(),
                      const SizedBox(height: 24),
                      Text(
                        "Dairy Choice",
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF373E43),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const CartChoices(),
                      const SizedBox(height: 16),
                      CustomMainButton(
                        text: "Purchase Now",
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return const AddedToCartAlert();
                            },
                          );
                        },
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
