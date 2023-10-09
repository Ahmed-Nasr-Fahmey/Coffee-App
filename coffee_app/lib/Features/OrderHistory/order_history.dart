import 'package:coffee_app/Core/Shared/Customs/custom_app_bar.dart';
import 'package:coffee_app/Core/Shared/Customs/custom_card.dart';
import 'package:flutter/material.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});
static const String routeName = "OrderHistory";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
        const    CustomAppBar(title: "Order History"),
        const SizedBox(height: 24,),
        CustomCard(
          counter: 1,
          image:"Assets/images/OrderHistory1.png" ,
          price: "\$4.50",
          size: "16 Oz (medium size)",
          subTitle: "with ice cream.",
          title: "Iced coffee with icecream",
        ),      const SizedBox(height: 24,),
      CustomCard(
          counter: 1,
          image:"Assets/images/OrderHistory1.png" ,
          price: "\$4.50",
          size: "16 Oz (medium size)",
          subTitle: "with ice cream.",
          title: "Iced coffee with icecream",
        ),      const SizedBox(height: 24,),
      CustomCard(
          counter: 1,
          image:"Assets/images/OrderHistory1.png" ,
          price: "\$4.50",
          size: "16 Oz (medium size)",
          subTitle: "with ice cream.",
          title: "Iced coffee with icecream",
        ),const SizedBox(height: 24,),
      CustomCard(
          counter: 1,
          image:"Assets/images/OrderHistory1.png" ,
          price: "\$4.50",
          size: "16 Oz (medium size)",
          subTitle: "with ice cream.",
          title: "Iced coffee with icecream",
        ),const SizedBox(height: 24,),
      CustomCard(
          counter: 1,
          image:"Assets/images/OrderHistory1.png" ,
          price: "\$4.50",
          size: "16 Oz (medium size)",
          subTitle: "with ice cream.",
          title: "Iced coffee with icecream",
        ),const SizedBox(height: 24,),
      CustomCard(
          counter: 1,
          image:"Assets/images/OrderHistory1.png" ,
          price: "\$4.50",
          size: "16 Oz (medium size)",
          subTitle: "with ice cream.",
          title: "Iced coffee with icecream",
        ),const SizedBox(height: 24,),
      CustomCard(
          counter: 1,
          image:"Assets/images/OrderHistory1.png" ,
          price: "\$4.50",
          size: "16 Oz (medium size)",
          subTitle: "with ice cream.",
          title: "Iced coffee with icecream",
        )  ,      const SizedBox(height: 40,),

          ],
        ),
      ),
    );
  }
}