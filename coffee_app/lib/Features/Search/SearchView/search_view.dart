
import 'package:coffee_app/Core/Constants/colors_const.dart';
import 'package:coffee_app/Core/Shared/Customs/custom_app_bar.dart';
import 'package:coffee_app/Core/Shared/Customs/custom_search_text_field.dart';
import 'package:coffee_app/Core/Shared/Functions/functions.dart';
import 'package:coffee_app/Core/Shared/widgets/recent_searches.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});
  static const routeName = 'SearchView';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GlobalFunctions.unFocusTextFieldsWhenClickOutSide(context),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBar(title: 'Search'),
            const CustomSearchTextField(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                'Recent Searches',
                style: GoogleFonts.nunito(
                  color: ConstColors.blackColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: RecentSearches(),
            ),
          ],
        ),
      ),
    );
  }
}
