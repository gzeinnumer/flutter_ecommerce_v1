import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_v1/models/models.dart';
import 'package:flutter_ecommerce_v1/widget/witgets.dart';

class CatalogScreen extends StatelessWidget {
  final Category category;
  static const String routeName = "/catalog";

  const CatalogScreen({required this.category});

  static Route route({required Category data}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CatalogScreen(category: data),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProduct = Product.products
        .where((element) => element.category == category.name)
        .toList();
    return Scaffold(
      appBar: CustomAppWidget(title: category.name!),
      bottomNavigationBar: CustomNavBar(),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.15,
        ),
        itemCount: categoryProduct.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: ProductCard(
              product: categoryProduct[index],
              widthFactor: 2.2,
            ),
          );
        },
      ),
    );
  }
}
