import 'package:coffee_app/Core/Shared/Customs/custom_main_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderConfirmation extends StatelessWidget {
  const OrderConfirmation({super.key});
static const String routeName = "OrderConfirmation";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          const SizedBox(height: 120,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38),
            child: Image.asset("Assets/images/OrderConfirmation.png",height: 300),
          ),
                  const SizedBox(height: 28),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Text("Please be patient, sit tight your orders will get to you shortly.",
                        textAlign: TextAlign.center
                        ,
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xFF373E43),
                        )),
                  ),
              const SizedBox(height: 120),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: CustomMainButton(text: "Delivery Details", onTap: (){}),
              )

        ],
      ),
    );
  }
}