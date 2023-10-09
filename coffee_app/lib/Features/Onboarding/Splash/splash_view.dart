import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:coffee_app/Core/Constants/colors_const.dart';
import 'package:coffee_app/Features/Onboarding/OnboardingView1/onboarding_view_1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String routeName = "SplashView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        duration: 1500,
        splash: Text(
          'CoffeeBloom',
          style: GoogleFonts.nunito(
            color: ConstColors.backgroundColor,
            fontSize: 32,
            fontWeight: FontWeight.w800,
          ),
        ),
        nextScreen: const OnboardingView1(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: ConstColors.primaryColor,
      ),
    );
  }
}
