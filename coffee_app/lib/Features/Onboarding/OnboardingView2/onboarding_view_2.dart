import 'package:coffee_app/Core/Constants/colors_const.dart';
import 'package:coffee_app/Core/Constants/images_const.dart';
import 'package:coffee_app/Core/Shared/Customs/custom_main_button.dart';
import 'package:coffee_app/Core/Shared/widgets/indicator.dart';
import 'package:coffee_app/Features/Onboarding/LogIn/login_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingView2 extends StatelessWidget {
  const OnboardingView2({super.key});
  static const String routeName = "OnboardingView2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff6A4616),
              ConstColors.blackColor,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Image.asset(ConstImages.onboarding2Image),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Order your coffee and\nget it delivered to you\n swiftly',
                textAlign: TextAlign.center,
                style: GoogleFonts.nunito(
                  color: ConstColors.backgroundColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Indicator(isActive: false),
                  SizedBox(
                    width: 2,
                  ),
                  Indicator(isActive: true),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: CustomMainButton(
                  text: 'Get Started',
                  onTap: () =>
                      Navigator.pushNamed(context, LogInView.routeName),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
