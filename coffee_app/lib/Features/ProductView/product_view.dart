import 'package:coffee_app/Core/Constants/colors_const.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
                  ),
                  child: Container(
                    child: Image.asset(
                      "Assets/images/Cart.png",
                      height: 310,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 50,
                  child: Icon(Icons.arrow_back_ios, color: ConstColors.backgroundColor),
                ),
                Positioned(
                  right: 20,
                  top: 50,
                  child: Icon(Icons.favorite, color: ConstColors.backgroundColor),
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
                    "Cold coffee frappuccino",
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF373E43),
                    ),
                  ),
                  Text(
                    "90mg Caffeine : 100Cal",
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF373E43),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star_purple500_outlined, color: Color(0xFFFFA500)),
                      Icon(Icons.star_purple500_outlined, color: Color(0xFFFFA500)),
                      Icon(Icons.star_purple500_outlined, color: Color(0xFFFFA500)),
                      Icon(Icons.star_purple500_outlined, color: ConstColors.grayColor),
                      Icon(Icons.star_purple500_outlined, color: ConstColors.grayColor),
                      const SizedBox(width: 12),
                      Text(
                        "(3.0)",
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: ConstColors.grayColor,
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

                CoffeeSizes(),

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

                CartChoices(),
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
              ) ,
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

        