import 'package:flutter/material.dart';

class TextPrice extends StatelessWidget {
  final String title;
  final String price;
  final Color color;
  const TextPrice({
    Key? key,
    required this.title,
    required this.price,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline5!.copyWith(color: color),
        ),
        Text(
          price,
          style: Theme.of(context).textTheme.headline5!.copyWith(color: color),
        )
      ],
    );
  }
}