import 'package:equatable/equatable.dart';

class Category extends Equatable{
  final String? name;
  final String? imagUrl;

  const Category({this.name, this.imagUrl});

  @override
  List<Object?> get props => [name, imagUrl];

  static List<Category> categories = [
    Category(
        name: "Fruit",
        imagUrl: "https://kokcateringservice.nl/wp-content/uploads/2016/01/fruit-e1460374613206.jpg"
    ),
    Category(
        name: "Drink",
        imagUrl: "https://images.absolutdrinks.com/drink-images/Raw/Absolut/9786c346-7ac6-4f3f-85da-50600ac0959a.jpg?impolicy=drinkcrop"
    ),
    Category(
        name: "Desert",
        imagUrl: "http://www.streetfoodcentral.com/wp-content/uploads/2021/04/19-Popular-Food-Truck-Dessert-Ideas.jpg"
    )
  ];
}