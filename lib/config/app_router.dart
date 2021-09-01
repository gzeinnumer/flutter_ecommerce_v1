import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_v1/models/models.dart';
import 'package:flutter_ecommerce_v1/ui/screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.routeName:
        return SplashScreen.route();
      case "/":
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case PersonScreen.routeName:
        return PersonScreen.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route(data: settings.arguments as Category);
      case WishListScreen.routeName:
        return WishListScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route(data: settings.arguments as Product);
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: "/error"),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text("Error"),
        ),
      ),
    );
  }
}
