import 'package:coffee_app/Features/Cart/cart_view.dart';
import 'package:coffee_app/Features/ContactUs/contact_us.dart';
import 'package:coffee_app/Features/ColdCoffeeDrinks/cold_coffee_drinks_view.dart';
import 'package:coffee_app/Features/Home/home_view.dart';
import 'package:coffee_app/Features/HotCoffeeDrinks/hot_coffee_drinks_view.dart';
import 'package:coffee_app/Features/IceCreamCoffeeDrinks/ice_cream_coffee_drinks_view.dart';
import 'package:coffee_app/Features/Onboarding/LogIn/login_view.dart';
import 'package:coffee_app/Features/Onboarding/OnboardingView1/onboarding_view_1.dart';
import 'package:coffee_app/Features/Onboarding/OnboardingView2/onboarding_view_2.dart';
import 'package:coffee_app/Features/Onboarding/PhoneVerification/phone_verification.dart';
import 'package:coffee_app/Features/OrderConfirmation/order_confirmation.dart';
import 'package:coffee_app/Features/OrderHistory/order_history.dart';
import 'package:coffee_app/Features/ProductView/product_view.dart';
import 'package:coffee_app/Features/Profile/ProfileView/profile_view.dart';
import 'package:coffee_app/Features/Search/SearchView/search_view.dart';
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
      case LogInView.routeName:
        return MaterialPageRoute(
          builder: (context) => const LogInView(),
          settings: settings,
        );
      case PhoneVerification.routeName:
        return MaterialPageRoute(
          builder: (context) => const PhoneVerification(),
          settings: settings,
        );
      case ContactUS.routeName:
        return MaterialPageRoute(
          builder: (context) => const ContactUS(),
          settings: settings,
        );
      case OrderHistory.routeName:
        return MaterialPageRoute(
          builder: (context) => const OrderHistory(),
          settings: settings,
        );
      case OrderConfirmation.routeName:
        return MaterialPageRoute(
          builder: (context) => const OrderConfirmation(),
          settings: settings,
        );
      case CartView.routeName:
        return MaterialPageRoute(
          builder: (context) => const CartView(),
          settings: settings,
        );
      case ProductView.routeName:
        return MaterialPageRoute(
          builder: (context) => const ProductView(),
          settings: settings,
        );
      case HomeView.routeName:
        return MaterialPageRoute(
          builder: (context) => const HomeView(),
          settings: settings,
        );
      case HotCoffeeDrinksView.routeName:
        return MaterialPageRoute(
          builder: (context) => const HotCoffeeDrinksView(),
          settings: settings,
        );
      case ColdCoffeeDrinksView.routeName:
        return MaterialPageRoute(
          builder: (context) => const ColdCoffeeDrinksView(),
          settings: settings,
        );
      case IceCreamCoffeeDrinksView.routeName:
        return MaterialPageRoute(
          builder: (context) => const IceCreamCoffeeDrinksView(),
          settings: settings,
        );
      case SearchView.routeName:
        return MaterialPageRoute(
          builder: (context) => const SearchView(),
          settings: settings,
        );
      case ProfileView.routeName:
        return MaterialPageRoute(
          builder: (context) => const ProfileView(),
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
