
import 'package:coffee_app/Core/Constants/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuOptionCard extends StatelessWidget {
  const MenuOptionCard({
    super.key,
    this.onTap,
    required this.icon,
    required this.text,
  });
  final Function()? onTap;
  final IconData? icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: icon == Icons.home
            ? const BoxDecoration(color: ConstColors.primaryColor)
            : null,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Icon(
                icon,
                color: icon == Icons.home
                    ? ConstColors.backgroundColor
                    : ConstColors.primaryColor,
              ),
              const SizedBox(
                width: 20,
              ),
              Center(
                child: Text(
                  text,
                  style: GoogleFonts.nunito(
                    color: icon == Icons.home
                        ? Colors.white
                        : ConstColors.primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
