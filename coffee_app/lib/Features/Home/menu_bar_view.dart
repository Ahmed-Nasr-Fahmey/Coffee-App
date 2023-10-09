import 'package:coffee_app/Core/Shared/widgets/menu_options_card.dart';
import 'package:coffee_app/Features/ContactUs/contact_us.dart';
import 'package:coffee_app/Features/Onboarding/LogIn/login_view.dart';
import 'package:coffee_app/Features/OrderHistory/order_history.dart';
import 'package:flutter/material.dart';

class MenuBarView extends StatelessWidget {
  const MenuBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 2,
      child: SafeArea(
        child: Column(
          children: [
            MenuOptionCard(
              text: 'Home',
              icon: Icons.home,
              onTap: () => Navigator.pop(context),
            ),
            MenuOptionCard(
              text: 'Order History',
              icon: Icons.history,
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, OrderHistory.routeName);
              },
            ),
            const MenuOptionCard(
              text: 'Promo code',
              icon: Icons.forward_to_inbox,
            ),
            const MenuOptionCard(
              text: 'Support',
              icon: Icons.support_agent,
            ),
            MenuOptionCard(
              text: 'Contact Us',
              icon: Icons.phone_callback,
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, ContactUS.routeName);
              },
            ),
            const MenuOptionCard(
              text: 'Settings',
              icon: Icons.settings,
            ),
            const Spacer(),
            MenuOptionCard(
              text: 'Log Out',
              icon: Icons.logout,
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, LogInView.routeName, (route) => false),
            ),
          ],
        ),
      ),
    );
  }
}
