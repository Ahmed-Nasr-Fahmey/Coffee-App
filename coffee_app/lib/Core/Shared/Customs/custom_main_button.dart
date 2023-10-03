import 'package:coffee_app/Core/Constants/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String? text;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 56,
        decoration: const BoxDecoration(
            color: ConstColors.primarycolor,
            borderRadius: BorderRadius.all(Radius.circular(32))),
        child: Center(
          child: Text(
            "$text",
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                fontSize: 16,
                color: ConstColors.backgroundColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
