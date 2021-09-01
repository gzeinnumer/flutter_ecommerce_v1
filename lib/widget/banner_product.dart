import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_v1/models/models.dart';
import 'package:flutter_ecommerce_v1/widget/witgets.dart';

class BannerProduct extends StatelessWidget {
  const BannerProduct({
    Key? key,
    required this.data,
  }) : super(key: key);

  final Product data;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 1.5,
        viewportFraction: 0.9,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
        enableInfiniteScroll: false,
        initialPage: 2,
        autoPlay: true,
      ),
      items: [
        HeroCarouselCard(
          product: data,
        )
      ],
    );
  }
}
