import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String? title;
  const SectionTitle({
    this.title
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Align(alignment: Alignment.topLeft,child: Text(this.title!, style: Theme.of(context).textTheme.headline3)),
    );
  }
}