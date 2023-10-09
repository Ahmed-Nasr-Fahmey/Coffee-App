import 'package:coffee_app/Core/Models/product_model.dart';
import 'package:coffee_app/Core/Shared/Customs/custom_home_coffee_card.dart';
import 'package:flutter/material.dart';

class HomeCoffeeCardBuilder extends StatelessWidget {
  const HomeCoffeeCardBuilder({
    super.key,
    required this.productModel,
  });
  final List<ProductModel> productModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: productModel.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomHomeCoffeeCard(
            productModel: productModel[index],
          );
        },
      ),
    );
  }
}
