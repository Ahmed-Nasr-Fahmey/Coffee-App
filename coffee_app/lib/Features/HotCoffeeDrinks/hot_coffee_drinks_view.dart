import 'package:coffee_app/Core/Constants/const_models.dart';
import 'package:coffee_app/Core/Shared/Builders/CategoriesProduct/custom_categories_product_card_builder.dart';
import 'package:coffee_app/Core/Shared/Customs/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HotCoffeeDrinksView extends StatelessWidget {
  const HotCoffeeDrinksView({super.key});
  static const String routeName = 'HotCoffeeDrinksView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 65),
        child: CustomAppBar(
          title: 'Hot Coffee Drinks',
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            CustomCategoriesProductCardBuilder(
              productsList: ConstModels.hotCoffeeDrinksModels,
            ),
          ],
        ),
      ),
    );
  }
}
