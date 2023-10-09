import 'package:coffee_app/Core/Constants/colors_const.dart';
import 'package:coffee_app/Core/Constants/const_models.dart';
import 'package:coffee_app/Core/Shared/Builders/Home/home_banner_items_builder.dart';
import 'package:coffee_app/Core/Shared/Builders/Home/home_coffee_card_builder.dart';
import 'package:coffee_app/Core/Shared/Customs/custom_categories_card.dart';
import 'package:coffee_app/Core/Shared/Customs/custom_home_title.dart';
import 'package:coffee_app/Core/Shared/Customs/custom_search_text_field.dart';
import 'package:coffee_app/Core/Shared/widgets/home_app_bar.dart';
import 'package:coffee_app/Features/ColdCoffeeDrinks/cold_coffee_drinks_view.dart';
import 'package:coffee_app/Features/Home/menu_bar_view.dart';
import 'package:coffee_app/Features/HotCoffeeDrinks/hot_coffee_drinks_view.dart';
import 'package:coffee_app/Features/IceCreamCoffeeDrinks/ice_cream_coffee_drinks_view.dart';
import 'package:coffee_app/Features/Search/SearchView/search_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuBarView(),
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(
              child: HomeAppBar(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Hello There,',
                  style: GoogleFonts.nunito(
                    color: ConstColors.greyColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Let\'s Drink Coffee',
                  style: GoogleFonts.nunito(
                    color: ConstColors.blackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, SearchView.routeName),
                  child: const CustomSearchTextField()),
            ),
            const SliverToBoxAdapter(child: HomeBunnerItemsBuilder()),
            const SliverToBoxAdapter(
              child: CustomHomeTitle(title: 'Categories'),
            ),
            SliverToBoxAdapter(
              child: CustomCategoriesCard(
                productModel: ConstModels.categoriesModels[0],
                onTap: () =>
                    Navigator.pushNamed(context, HotCoffeeDrinksView.routeName),
              ),
            ),
            SliverToBoxAdapter(
              child: CustomCategoriesCard(
                productModel: ConstModels.categoriesModels[1],
                onTap: () => Navigator.pushNamed(
                    context, ColdCoffeeDrinksView.routeName),
              ),
            ),
            SliverToBoxAdapter(
              child: CustomCategoriesCard(
                productModel: ConstModels.categoriesModels[2],
                onTap: () => Navigator.pushNamed(
                    context, IceCreamCoffeeDrinksView.routeName),
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomHomeTitle(title: 'Today’s Specials'),
            ),
            SliverToBoxAdapter(
              child: HomeCoffeeCardBuilder(
                productModel: ConstModels.todaySpecialModels,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomHomeTitle(title: 'Trending Coffee'),
            ),
            SliverToBoxAdapter(
              child: HomeCoffeeCardBuilder(
                productModel: ConstModels.trendingCoffeeModels,
              ),
            ),
            const SliverToBoxAdapter(
              child: CustomHomeTitle(title: 'Popular Coffee'),
            ),
            SliverToBoxAdapter(
              child: HomeCoffeeCardBuilder(
                productModel: ConstModels.popularCoffeeModels,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
