
import 'package:coffee_app/Core/Constants/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 24,
        left: 24,
        top: 20,
        bottom: 0,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(50),
        elevation: 6,
        shadowColor: ConstColors.greyColor,
        child: TextField(
          style: GoogleFonts.nunito(
            color: ConstColors.greyColor,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            hintText: 'What are you looking for?',
            hintStyle: GoogleFonts.nunito(
              color: ConstColors.greyColor,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: ConstColors.greyColor,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none,
            ),
          ),
          cursorColor: ConstColors.primaryColor,
        ),
      ),
    );
  }
}
