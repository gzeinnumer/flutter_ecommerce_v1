import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_v1/models/models.dart';
import 'package:flutter_ecommerce_v1/widget/hero_carousel_card.dart';

class BannerHome extends StatelessWidget {
  const BannerHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 1.5,
          viewportFraction: 0.9,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          enableInfiniteScroll: false,
          initialPage: 2,
          autoPlay: true,
        ),
        items: Category.categories
            .map((e) => HeroCarouselCard(category: e))
            .toList(),
      ),
    );
  }
}