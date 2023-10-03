import 'package:coffee_app/Features/Onboarding/OnboardingView1/onboarding_view_1.dart';
import 'package:coffee_app/Features/Onboarding/OnboardingView2/onboarding_view_2.dart';
import 'package:flutter/material.dart';

import '../../Features/Onboarding/Splash/splash_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashView.routeName:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );
      case OnboardingView1.routeName:
        return MaterialPageRoute(
          builder: (context) => const OnboardingView1(),
          settings: settings,
        );  
        case OnboardingView2.routeName:
        return MaterialPageRoute(
          builder: (context) => const OnboardingView2(),
          settings: settings,
        );  
      default:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );
    }
  }
}
