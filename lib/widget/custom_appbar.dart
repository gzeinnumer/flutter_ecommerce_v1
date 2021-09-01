import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_v1/ui/screen.dart';

class CustomAppWidget extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const CustomAppWidget({
    Key? key,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Center(
        child: Container(
          color: Colors.black,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Text(
            this.title,
            style: Theme.of(context).textTheme.headline2!.copyWith(color: Colors.white),
          ),
        ),
      ),
      iconTheme: IconThemeData(color: Colors.black),
      actions: [
        IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {
            Navigator.pushNamed(context, WishListScreen.routeName);
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}