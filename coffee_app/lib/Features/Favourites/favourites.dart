import 'package:coffee_app/Core/Shared/Customs/custom_app_bar.dart';
import 'package:coffee_app/Core/Shared/Customs/custom_card2.dart';
import 'package:flutter/material.dart';

class Favourites extends StatelessWidget {
  const Favourites({super.key});
static const String routeName = "Favourites";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
        const    CustomAppBar(title: "Favourites"),
        const SizedBox(height: 24,),
        CustomCard2(
          counter: 1,
          image:"Assets/images/OrderHistory1.png" ,
          price: "\$4.50",
          size: "16 Oz (medium size)",
          subTitle: "with ice cream.",
          title: "Iced coffee with icecream",
        ), const SizedBox(height: 24,),
        CustomCard2(
          counter: 1,
          image:"Assets/images/OrderHistory1.png" ,
          price: "\$4.50",
          size: "16 Oz (medium size)",
          subTitle: "with ice cream.",
          title: "Iced coffee with icecream",
        ), const SizedBox(height: 24,),
        CustomCard2(
          counter: 1,
          image:"Assets/images/OrderHistory1.png" ,
          price: "\$4.50",
          size: "16 Oz (medium size)",
          subTitle: "with ice cream.",
          title: "Iced coffee with icecream",
        ), const SizedBox(height: 24,),
        CustomCard2(
          counter: 1,
          image:"Assets/images/OrderHistory1.png" ,
          price: "\$4.50",
          size: "16 Oz (medium size)",
          subTitle: "with ice cream.",
          title: "Iced coffee with icecream",
        )
        ,      const SizedBox(height: 24,),
       
        
        CustomCard2(
          counter: 1,
          image:"Assets/images/OrderHistory1.png" ,
          price: "\$4.50",
          size: "16 Oz (medium size)",
          subTitle: "with ice cream.",
          title: "Iced coffee with icecream",
        ),      const SizedBox(height: 24,),
           CustomCard2(
          counter: 1,
          image:"Assets/images/OrderHistory1.png" ,
          price: "\$4.50",
          size: "16 Oz (medium size)",
          subTitle: "with ice cream.",
          title: "Iced coffee with icecream",
        )
       , SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}