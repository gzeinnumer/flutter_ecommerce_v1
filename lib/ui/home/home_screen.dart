import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_v1/models/models.dart';
import 'package:flutter_ecommerce_v1/widget/witgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key, required this.title}) : super(key: key);

  final String title;
  static const String routeName = "/";

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen(title: "Flutter Demo Home Page"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppWidget(title: "Zero To Unicorn"),
      bottomNavigationBar: CustomNavBar(),
      body: Column(
        children: [
          BannerHome(),
          SectionTitle(title: "RECOMENDED"),
          // ProductCard(product: Product.products[0])
          ProductCarousel(productList: Product.products.where((element) => element.isRecomemded!).toList()),
          SectionTitle(title: "MOST POPULAR"),
          // ProductCard(product: Product.products[0])
          ProductCarousel(productList: Product.products.where((element) => element.isPopular!).toList()),
          // ProductCarousel(productList: Product.products.where((element) => element.price!>5).toList())
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
