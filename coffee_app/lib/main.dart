import 'package:coffee_app/Features/Onboarding/LogIn/login_view.dart';
import 'package:flutter/material.dart';

import 'Core/Constants/colors_const.dart';
import 'Core/Routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const CoffeeApp());
}

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LogInView.routeName,
      onGenerateRoute: Routes.generateRoute,
      theme: ThemeData(
        scaffoldBackgroundColor: ConstColors.backgroundColor,
      ),
    );
  }
}
