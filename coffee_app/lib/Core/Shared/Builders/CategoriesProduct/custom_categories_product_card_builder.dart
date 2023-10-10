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
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height - 100,
        child: GridView.builder(
          itemCount: productsList.length,
          physics: const BouncingScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.641,
            crossAxisSpacing: MediaQuery.of(context).size.width * 0.03,
            mainAxisSpacing: MediaQuery.of(context).size.height * 0.03,
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
