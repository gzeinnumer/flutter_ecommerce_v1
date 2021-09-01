import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_v1/models/models.dart';
import 'package:flutter_ecommerce_v1/widget/witgets.dart';

class ProductCarousel extends StatelessWidget {
  final List<Product> productList;

  const ProductCarousel({
    Key? key,
    required this.productList
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          scrollDirection: Axis.horizontal,
          itemCount: productList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: ProductCard(product: productList[index]),
            );
          }),
    );
  }
}