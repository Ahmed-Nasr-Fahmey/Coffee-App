import 'package:coffee_app/Core/Constants/colors_const.dart';
import 'package:coffee_app/Features/Cart/cart_view.dart';
import 'package:coffee_app/Features/Favourites/favourites.dart';
import 'package:coffee_app/Features/Home/home_view.dart';
import 'package:coffee_app/Features/ProfileView/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});
  static const routeName = 'CustomBottomNavigationBar';
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    Favourites(),
    CartView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: GNav(
        tabMargin: const EdgeInsets.only(bottom: 8, top: 8, left: 4, right: 4),
        color: ConstColors.greyColor,
        activeColor: ConstColors.primaryColor,
        gap: 6,
        backgroundColor: ConstColors.primaryColor,
        tabBackgroundColor: const Color.fromARGB(255, 220, 222, 228),
        padding: const EdgeInsets.all(16),
        tabBorderRadius: 16,
        tabs: const [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(
            icon: Icons.favorite,
            text: "Favourites",
          ),
          GButton(
            icon: Icons.shopping_cart,
            text: "Cart",
          ),
          GButton(
            icon: Icons.person,
            text: "Profile",
          )
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
