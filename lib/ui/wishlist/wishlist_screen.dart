import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecommerce_v1/bloc/wishlist/wishlist_bloc.dart';
import 'package:flutter_ecommerce_v1/models/models.dart';
import 'package:flutter_ecommerce_v1/widget/witgets.dart';

class WishListScreen extends StatelessWidget {
  WishListScreen({Key? key, required this.title}) : super(key: key);

  final String title;
  static const String routeName = "/wishlist";

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => WishListScreen(title: "Flutter Demo Home Page"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppWidget(title: "Wishlist"),
      bottomNavigationBar: CustomNavBar(),
      body: BlocBuilder<WishlistBloc, WishlistState>(
        builder: (context, state) {
          if(state is WishlistLoading){
            return CircularProgressIndicator();
          }
          if(state is WishlistLoaded){
            return GridView.builder(
              padding: const EdgeInsets.symmetric(
                  horizontal: 8.0, vertical: 16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: 2.2,
              ),
              itemCount: state.wishlist.products.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: ProductCard(
                    product: state.wishlist.products[index],
                    widthFactor: 1.1,
                    leftPosition: 100,
                    isWishlist: true,
                  ),
                );
              },
            );
          } else{
            return Text("Something went wrong");
          }
        },
      ),
    );
  }
}