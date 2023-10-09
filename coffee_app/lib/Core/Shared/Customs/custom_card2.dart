import 'package:coffee_app/Core/Constants/colors_const.dart';
import 'package:coffee_app/Core/Shared/Customs/custom_main_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CustomCard2 extends StatefulWidget {
  CustomCard2({
    super.key,
    required this.counter,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.size,
    required this.price,
  });
  int counter;
  final String image;
  final String title;
  final String subTitle;
  final String size;
  final String price;

  @override
  State<CustomCard2> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFFBFBFB),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 12),
              child: Row(
                children: [
                  Image.asset(
                    widget.image,
                    width: 80,
                    height: 80,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 14, bottom: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.title,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF373E43),
                            )),
                        Text(widget.subTitle,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF757575),
                            )),
                        Text(widget.size,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF757575),
                            )),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(widget.price,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.nunito(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF373E43),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 16),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 
                 CustomMainButton(
                  fontSize: 12,
                      height: 30,
                      text: "Add to cart",
                      width: 100,
                      radius: 5,
                      onTap: () {})

                      ,
                     const SizedBox(width: 24,)
                      , CustomMainButton(
                        backgroundColor: ConstColors.backgroundColor,
                        textColor: ConstColors.primaryColor,
                  fontSize: 12,
                      height: 30,
                      text: "Remove",
                      width: 100,
                      radius: 5,
                      onTap: () {})
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
