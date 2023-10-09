import 'package:coffee_app/Core/Shared/widgets/home_banner_item.dart';
import 'package:flutter/material.dart';

import '../../widgets/indicator.dart';

class HomeBunnerItemsBuilder extends StatefulWidget {
  const HomeBunnerItemsBuilder({super.key});

  @override
  State<HomeBunnerItemsBuilder> createState() => _HomeBunnerItemsBuilderState();
}

class _HomeBunnerItemsBuilderState extends State<HomeBunnerItemsBuilder> {
  // ignore: non_constant_identifier_names
  List<String> HomeBannerImages = [
    'https://images.pexels.com/photos/2836945/pexels-photo-2836945.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/3879495/pexels-photo-3879495.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQezX4rCffw_tQfJY5QI0JucG89oETFzc-j4w&usqp=CAU',
    'https://c4.wallpaperflare.com/wallpaper/280/759/648/coffee-hd-1080p-high-quality-wallpaper-preview.jpg',
    'https://www.wallpapermania.eu/images/lthumbs/2015-10/8450_Hallo-happy-cup-of-coffee-HD-wallpaper.jpg',
  ];
  int selectedItem = 2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 40),
          height: 140,
          child: PageView.builder(
            clipBehavior: Clip.none,
            controller: PageController(
              initialPage: selectedItem,
              keepPage: true,
              viewportFraction: 0.5,
            ),
            onPageChanged: (index) {
              setState(() {
                selectedItem = index;
              });
            },
            itemCount: HomeBannerImages.length,
            itemBuilder: (context, index) {
              var scale = selectedItem == index ? 1.1 : 0.8;
              return TweenAnimationBuilder(
                curve: Curves.ease,
                duration: const Duration(milliseconds: 350),
                tween: Tween(begin: scale, end: scale),
                child:
                    HomeBannerItem(imageUrl: HomeBannerImages.elementAt(index)),
                builder: (context, value, child) {
                  return Transform.scale(
                    scale: value.toDouble(),
                    child: child,
                  );
                },
              );
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              HomeBannerImages.length,
              (index) => Indicator(
                isActive: selectedItem == index ? true : false,
              ),
            ),
          ],
        )
      ],
    );
  }
}
