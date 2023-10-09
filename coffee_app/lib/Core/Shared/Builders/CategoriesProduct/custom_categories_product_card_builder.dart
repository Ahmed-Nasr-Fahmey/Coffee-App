import 'package:coffee_app/Core/Models/product_model.dart';
import 'package:coffee_app/Core/Shared/Customs/custom_categories_product_card.dart';
import 'package:flutter/material.dart';

class CustomCategoriesProductCardBuilder extends StatelessWidget {
  const CustomCategoriesProductCardBuilder({
    super.key,
    required this.productsList,
  });
  final List<ProductModel> productsList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        height: MediaQuery.of(context).size.height - 100,
        child: GridView.builder(
          itemCount: productsList.length,
          physics: const BouncingScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.641,
            crossAxisSpacing: 20,
            mainAxisSpacing: 32,
          ),
          itemBuilder: (context, index) {
            return CustomCategoriesProductCard(
              productModel: productsList[index],
            );
          },
        ),
      ),
    );
  }
}
