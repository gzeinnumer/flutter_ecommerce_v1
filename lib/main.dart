import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_v1/bloc/cart/cart_bloc.dart';
import 'package:flutter_ecommerce_v1/bloc/wishlist/wishlist_bloc.dart';

import 'config/app_router.dart';
import 'config/theme.dart';
import 'ui/screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => WishlistBloc()..add(StartWishlist())),
        BlocProvider(create: (_) => CartBloc()..add(CartStarted())),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: SplashScreen.routeName,
      ),
    );
  }
}

