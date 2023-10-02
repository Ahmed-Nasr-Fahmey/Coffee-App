import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String routeName = "SplashView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        // body: AnimatedSplashScreen(
        //   duration: 1500,
        //   splashIconSize: 250,
        //   splash: Column(
        //     children: [
        //       ConstImages.logoImage,
        //       Text(
        //         'CINEMAX',
        //         style: GoogleFonts.montserrat(
        //           color: ConstColors.primaryColor,
        //           fontSize: 28,
        //           fontWeight: FontWeight.w600,
        //           letterSpacing: 0.12,
        //         ),
        //       )
        //     ],
        //   ),
        //   nextScreen: const OnboardingView1(),
        //   splashTransition: SplashTransition.fadeTransition,
        //   backgroundColor: ConstColors.backgroundColor,
        // ),
        );
  }
}
