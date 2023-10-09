import 'package:coffee_app/Core/Constants/colors_const.dart';
import 'package:coffee_app/Core/Constants/images_const.dart';
import 'package:coffee_app/Core/Shared/widgets/indicator.dart';
import 'package:coffee_app/Features/Onboarding/LogIn/login_view.dart';
import 'package:coffee_app/Features/Onboarding/OnboardingView2/onboarding_view_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingView1 extends StatelessWidget {
  const OnboardingView1({super.key});
  static const String routeName = "OnboardingView1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.blackColor,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(ConstImages.onboarding1Image),
            Positioned(
              top: 30,
              right: 24,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(60, 30),
                  backgroundColor: ConstColors.backgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, LogInView.routeName);
                },
                child: Text(
                  'SKIP',
                  style: GoogleFonts.nunito(
                    color: ConstColors.primaryColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                'Start your day with the\nbest coffee brewed from the\n best ingredients.',
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  color: ConstColors.backgroundColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.35,
              left: 0,
              right: 0,
              child: Center(
                child: Text(
                  'The best grain, the finest roast and\nthe most powerful flavor.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunito(
                    color: ConstColors.backgroundColor.withOpacity(0.5),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.3,
              left: 0,
              right: 0,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Indicator(isActive: true),
                  SizedBox(
                    width: 2,
                  ),
                  Indicator(isActive: false)
                ],
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.1,
              right: (MediaQuery.of(context).size.width - 60) / 2,
              child: GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, OnboardingView2.routeName),
                child: Container(
                  width: 60,
                  height: 65,
                  decoration: ShapeDecoration(
                    color: ConstColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: ConstColors.backgroundColor,
                      size: 32,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
