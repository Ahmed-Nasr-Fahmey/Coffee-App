import 'package:coffee_app/Core/Constants/images_const.dart';
import 'package:coffee_app/Core/Models/product_model.dart';

class ConstModels {
  static List<ProductModel> categoriesModels = [
    ProductModel(
      imageUrl: ConstImages.categoriesImagesList[0],
      title: 'Hot Coffee Drinks',
      subTitle: 'Freshly made hot coffees',
    ),
    ProductModel(
      imageUrl: ConstImages.categoriesImagesList[1],
      title: 'Cold Coffee Drinks',
      subTitle: 'Freshly made coffees with ice',
    ),
    ProductModel(
      imageUrl: ConstImages.categoriesImagesList[2],
      title: 'Ice cream Coffee Drinks',
      subTitle: 'Flavored ice-cream coffees',
    ),
  ];
  static List<ProductModel> todaySpecialModels = [
    ProductModel(
      imageUrl: ConstImages.todaySpecialImagesList[0],
      title: 'Ice cream wafer stick',
      subTitle: '100mg Caffeine : 110 Cal',
      price: r'$4.55',
    ),
    ProductModel(
      imageUrl: ConstImages.todaySpecialImagesList[1],
      title: 'Cold coffee frappe',
      subTitle: '90mg Caffeine : 100 Cal',
      price: r'$3.55',
    ),
    ProductModel(
      imageUrl: ConstImages.todaySpecialImagesList[2],
      title: 'Iced coffee vanilla',
      subTitle: '120mg Caffeine : 110 Cal',
      price: r'$5.55',
    ),
  ];
  static List<ProductModel> trendingCoffeeModels = [
    ProductModel(
      imageUrl: ConstImages.trendingCoffeeImagesList[0],
      title: 'Caramel cold brew',
      subTitle: '150mg Caffeine : 230 Cal',
      price: r'$4.50',
    ),
    ProductModel(
      imageUrl: ConstImages.trendingCoffeeImagesList[1],
      title: 'Latte capuccino',
      subTitle: '120mg Caffeine : 200 Cal',
      price: r'$4.70',
    ),
    ProductModel(
      imageUrl: ConstImages.trendingCoffeeImagesList[2],
      title: 'Iced coffee latte',
      subTitle: '220mg Caffeine : 300 Cal',
      price: r'$4.95',
    ),
  ];
  static List<ProductModel> popularCoffeeModels = [
    ProductModel(
      imageUrl: ConstImages.popularCoffeeImagesList[0],
      title: 'Pumpkin brew',
      subTitle: '150mg : 230 Cal',
      price: r'$4.50',
    ),
    ProductModel(
      imageUrl: ConstImages.popularCoffeeImagesList[1],
      title: 'Café latte',
      subTitle: '110mg : 200 Cal',
      price: r'$4.00',
    ),
    ProductModel(
      imageUrl: ConstImages.popularCoffeeImagesList[2],
      title: 'Long black',
      subTitle: '70mg : 120 Cal',
      price: r'$3.70',
    ),
  ];
  static List<ProductModel> hotCoffeeDrinksModels = [
    ProductModel(
      imageUrl: ConstImages.hotCoffeeDrinksImagesList[0],
      title: 'Latte cappuccino',
      subTitle: '120mg Caffeine : 200 Cal',
      price: r'$4.70',
    ),
    ProductModel(
      imageUrl: ConstImages.hotCoffeeDrinksImagesList[1],
      title: 'Hot chocolate milk',
      subTitle: '90mg Caffeine : 80 Cal',
      price: r'$3.50',
    ),
    ProductModel(
      imageUrl: ConstImages.hotCoffeeDrinksImagesList[2],
      title: 'Long black coffee',
      subTitle: '70mg Caffeine : 120 Cal',
      price: r'$3.70',
    ),
    ProductModel(
      imageUrl: ConstImages.hotCoffeeDrinksImagesList[3],
      title: 'Nutella hot coffee',
      subTitle: '110mg Caffeine : 95 Cal',
      price: r'$3.25',
    ),
    ProductModel(
      imageUrl: ConstImages.hotCoffeeDrinksImagesList[4],
      title: 'Beaten coffee',
      subTitle: '80mg Caffeine : 90 Cal',
      price: r'$3.50',
    ),
    ProductModel(
      imageUrl: ConstImages.hotCoffeeDrinksImagesList[5],
      title: 'Cortado',
      subTitle: '110mg Caffeine : 200 Cal',
      price: r'$4.80',
    ),
  ];
  static List<ProductModel> coldCoffeeDrinksModels = [
    ProductModel(
      imageUrl: ConstImages.coldCoffeeDrinksImagesList[0],
      title: 'Cold coffee frappe',
      subTitle: '90mg Caffeine : 100 Cal',
      price: r'$3.55',
    ),
    ProductModel(
      imageUrl: ConstImages.coldCoffeeDrinksImagesList[1],
      title: 'Iced coffee latte',
      subTitle: '220mg Caffeine : 300 Cal',
      price: r'$4.95',
    ),
    ProductModel(
      imageUrl: ConstImages.coldCoffeeDrinksImagesList[2],
      title: 'Iced coffee & cream',
      subTitle: '110mg Caffeine : 200 Cal',
      price: r'$4.80',
    ),
    ProductModel(
      imageUrl: ConstImages.coldCoffeeDrinksImagesList[3],
      title: 'Cold brew coffee',
      subTitle: '90mg Caffeine : 80 Cal',
      price: r'$4.55',
    ),
  ];
  static List<ProductModel> iceCreamCoffeeDrinksModels = [
    ProductModel(
      imageUrl: ConstImages.iceCreamCoffeeDrinksImagesList[0],
      title: 'Icecream wafer stick',
      subTitle: '100mg Caffeine : 110 Cal',
      price: r'$4.55',
    ),
    ProductModel(
      imageUrl: ConstImages.iceCreamCoffeeDrinksImagesList[1],
      title: 'Icecream coffee van ',
      subTitle: '120mg Caffeine : 110 Cal',
      price: r'$5.55',
    ),
    ProductModel(
      imageUrl: ConstImages.iceCreamCoffeeDrinksImagesList[2],
      title: 'Icecream with coffee',
      subTitle: '90mg Caffeine : 80 Cal',
      price: r'$4.55',
    ),
    ProductModel(
      imageUrl: ConstImages.iceCreamCoffeeDrinksImagesList[3],
      title: 'Chocolate icecream',
      subTitle: '220mg Caffeine : 120 Cal',
      price: r'$4.55',
    ),
  ];
}
