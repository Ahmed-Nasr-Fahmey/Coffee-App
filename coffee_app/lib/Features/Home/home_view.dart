import 'package:coffee_app/Core/Shared/Bodys/home_body.dart';
import 'package:coffee_app/Core/Shared/Functions/functions.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = "HomeView";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GlobalFunctions.unFocusTextFieldsWhenClickOutSide(context),
      child: const HomeViewBody(),
    );
  }
}
