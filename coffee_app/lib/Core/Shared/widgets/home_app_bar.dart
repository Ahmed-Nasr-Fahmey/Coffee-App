

import 'package:coffee_app/Core/Constants/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        foregroundColor: ConstColors.primaryColor,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Center(
            child: Text(
              'Hi, Ahmed',
              style: GoogleFonts.nunito(
                color: ConstColors.primaryColor,
                fontSize: 14,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const SizedBox(
            width: 24,
          )
        ],
      );
  }
}
