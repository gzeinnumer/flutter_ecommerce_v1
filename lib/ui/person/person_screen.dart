import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_v1/widget/witgets.dart';

class PersonScreen extends StatelessWidget {
  PersonScreen({Key? key, required this.title}) : super(key: key);

  final String title;
  static const String routeName = "/person";

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => PersonScreen(title: "Flutter Demo Home Page"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppWidget(title: "Person"),
      bottomNavigationBar: CustomNavBar(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}