import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_v1/ui/screen.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              icon: Icon(Icons.home, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, CartScreen.routeName);
              },
              icon: Icon(Icons.shopping_cart, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, PersonScreen.routeName);
              },
              icon: Icon(Icons.person, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
