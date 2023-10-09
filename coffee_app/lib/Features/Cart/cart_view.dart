import 'package:coffee_app/Core/Shared/Customs/custom_app_bar.dart';
import 'package:coffee_app/Core/Shared/Customs/custom_card.dart';
import 'package:coffee_app/Core/Shared/Customs/custom_main_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});
  static const String routeName = "CartView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(title: "Your cart"),
            const SizedBox(
              height: 24,
            ),
            CustomCard(
              cartView: true,
              counter: 1,
              image: "Assets/images/OrderHistory1.png",
              price: "\$4.50",
              size: "16 Oz (medium size)",
              subTitle: "with ice cream.",
              title: "Iced coffee with icecream",
            ),
            const SizedBox(
              height: 24,
            ),
            CustomCard(
              cartView: true,
              counter: 5,
              image: "Assets/images/OrderHistory1.png",
              price: "\$4.50",
              size: "16 Oz (medium size)",
              subTitle: "with ice cream.",
              title: "Iced coffee with icecream",
            ),
            const SizedBox(
              height: 24,
            ),
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
                  Row(
                children: [
                  Text(
                    'Subtotal',
                    style: GoogleFonts.nunito(
                      color: Color(0xFF373E43),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$10.5',
                    style: GoogleFonts.nunito(
                      color: Color(0xFF373E43),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ), Row(
                children: [
                  Text(
                    'Delivery fxee',
                    style: GoogleFonts.nunito(
                      color: Color(0xFF373E43),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$1.05',
                    style: GoogleFonts.nunito(
                      color: Color(0xFF373E43),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ), Row(
                children: [
                  Text(
                    'Total',
                    style: GoogleFonts.nunito(
                      color: Color(0xFF373E43),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$11.55',
                    style: GoogleFonts.nunito(
                      color: Color(0xFF373E43),
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
             
            ],
          ),
        )
        
        
      ,const SizedBox(height: 40,)
      ,
         Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: CustomMainButton(text: "Check out", onTap: () {}),
            )
          ],
        ),
      ),
    );
  }
}
