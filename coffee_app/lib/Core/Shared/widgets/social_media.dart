import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        width: double.infinity,
        decoration:const BoxDecoration(
          color: Color(0xFFFBFBFB),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 14, bottom: 10, left: 21),
          child: Row(
            children: [
              Image.asset(
                image,
                width: 24,
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28),
                child: Text(title,
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color:const Color(0xFF373E43),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
