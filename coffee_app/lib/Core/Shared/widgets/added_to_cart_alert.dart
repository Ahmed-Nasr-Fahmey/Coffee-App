import 'dart:ui';

import 'package:coffee_app/Features/Cart/cart_view.dart';
import 'package:coffee_app/Features/Home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Constants/colors_const.dart';
class AddedToCartAlert extends StatelessWidget {
  const AddedToCartAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            color: Colors.transparent,
          ),
        ),
        AlertDialog(
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: ConstColors.backgroundColor,
          content: Container(
            padding: const EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width - 2 * 16,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 50, top: 16),
                  child: Icon(Icons.check_circle_outlined,size: 40,color: Color(0xFF055326),)
                ),
                
                const SizedBox(
                  height: 20,
                ),
               Text(
                  "Item has been added to Cart",
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF373E43),
                  ),
                ),

                const SizedBox(
                  height: 37,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ConstColors.primaryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, HomeView.routeName);
                      },
                      child: SizedBox(
                        height: 45,
                        width: 180,
                        child: Center(
                          child: Text(
                            'Continue shopping',
                            style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                fontSize: 16,
                                color: ConstColors.backgroundColor,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
       , const SizedBox(
                  height: 8,
                )
               , Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),border: Border.all(color: ConstColors.primaryColor,)),
                      child: ElevatedButton(
                        
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ConstColors.backgroundColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        onPressed: () {

                          Navigator.pushNamed(context, CartView.routeName);
                                                },
                        child: SizedBox(
                          height: 45,
                          width: 160,
                          child: Center(
                            child: Text(
                              'View my cart',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontSize: 16,
                                  color: ConstColors.primaryColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
        
              ],
            ),
          ),
        ),
      ],
    );
  }
}
  