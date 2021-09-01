import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_v1/bloc/cart/cart_bloc.dart';
import 'package:flutter_ecommerce_v1/bloc/wishlist/wishlist_bloc.dart';
import 'package:flutter_ecommerce_v1/models/models.dart';
import 'package:flutter_ecommerce_v1/ui/cart/cart_screen.dart';
import 'package:flutter_ecommerce_v1/widget/witgets.dart';

class ProductScreen extends StatelessWidget {
  final Product product;
  static const String routeName = "/product";

  const ProductScreen({required this.product});

  static Route route({required Product data}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => ProductScreen(product: data),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppWidget(title: product.name!),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {},
                  color: Colors.white,
                  icon: Icon(Icons.share)),
              BlocBuilder<WishlistBloc, WishlistState>(
                builder: (context, state) {
                  return IconButton(
                      onPressed: () {
                        context
                            .read<WishlistBloc>()
                            .add(AddWishlistProduct(product));
                        final snackbar =
                            SnackBar(content: Text("Added to your Wishlist!"));
                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                      },
                      color: Colors.white,
                      icon: Icon(Icons.favorite));
                },
              ),
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  return ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        context.read<CartBloc>().add(CartProductAdded(product));
                        Navigator.pushNamed(context, CartScreen.routeName);
                      },
                      child: Text(
                        "ADD TO CART",
                        style: Theme.of(context).textTheme.headline3,
                      ));
                },
              )
            ],
          ),
        ),
      ),
      // body: HeroCarouselCard(product: data,),
      body: ListView(children: [
        BannerProduct(data: product),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                alignment: Alignment.bottomCenter,
                color: Colors.black.withAlpha(50),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                width: MediaQuery.of(context).size.width - 1,
                height: 50,
                alignment: Alignment.bottomCenter,
                color: Colors.black,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.name!,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          '${product.price!}',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ExpansionTile(
            initiallyExpanded: true,
            title: Text("Product Information",
                style: Theme.of(context).textTheme.headline3),
            children: [
              ListTile(
                title: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ExpansionTile(
            initiallyExpanded: false,
            title: Text("Delivery Information",
                style: Theme.of(context).textTheme.headline3),
            children: [
              ListTile(
                title: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
