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
      default:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );
    }
  }
}
