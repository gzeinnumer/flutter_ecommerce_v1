import 'package:equatable/equatable.dart';

class Product extends Equatable{
  final String? name;
  final String? category;
  final String? imageUrl;
  final double? price;
  final bool? isRecomemded;
  final bool? isPopular;

  Product({this.name, this.category, this.imageUrl, this.price, this.isRecomemded, this.isPopular});

  @override
  List<Object?> get props => [name, category, imageUrl, price, isPopular, isRecomemded];

  static List<Product> products = [
    Product(
      name: "Fruit#1",
      category: "Fruit",
      imageUrl: "https://images.unsplash.com/photo-1601004890684-d8cbf643f5f2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8&w=1000&q=80",
      price: 2.99,
      isRecomemded: true,
      isPopular: true
    ),
    Product(
      name: "Fruit#2",
      category: "Fruit",
      imageUrl: "https://californiaavocado.com/wp-content/uploads/2020/07/avocado-fruit-berry.jpg",
      price: 2.99,
      isRecomemded: true,
      isPopular: false
    ),
    Product(
      name: "Fruit#3",
      category: "Fruit",
      imageUrl: "https://images.heb.com/is/image/HEBGrocery/000377519?fit=constrain,1&wid=800&hei=800&fmt=jpg&qlt=85,0&resMode=sharp2&op_usm=1.75,0.3,2,0",
      price: 2.99,
      isRecomemded: false,
      isPopular: false
    ),
    Product(
      name: "Drink#1",
      category: "Drink",
      imageUrl: "https://globalassets.starbucks.com/assets/7fe2123728f844849ae4f9ea01473468.jpg?impolicy=1by1_wide_topcrop_630",
      price: 2.99,
      isRecomemded: true,
      isPopular: true
    ),
    Product(
      name: "Drink#2",
      category: "Drink",
      imageUrl: "https://momfoodie.com/wp-content/uploads/Blue-Lagoon-Drink-480x270.jpg",
      price: 2.99,
      isRecomemded: true,
      isPopular: false
    ),
    Product(
      name: "Drink#3",
      category: "Drink",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQluhhrAi6b25ZBq7xeAuJh-TXiN3kRnnlKJw&usqp=CAU",
      price: 2.99,
      isRecomemded: false,
      isPopular: false
    ),
    Product(
      name: "Desert#1",
      category: "Desert",
      imageUrl: "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/dessert-main-image-molten-cake-0fbd4f2.jpg?quality=90&resize=500,454",
      price: 2.99,
      isRecomemded: true,
      isPopular: true
    ),
    Product(
      name: "Desert#2",
      category: "Desert",
      imageUrl: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/summer-desserts-1584132523.jpg?crop=0.668xw:1.00xh;0.167xw,0&resize=640:*",
      price: 2.99,
      isRecomemded: true,
      isPopular: false
    ),
    Product(
      name: "Desert#3",
      category: "Desert",
      imageUrl: "https://i.pinimg.com/originals/e8/bb/fe/e8bbfef4616d2bbee9a9f0cd3f35ded5.jpg",
      price: 2.99,
      isRecomemded: false,
      isPopular: false
    ),
  ];
}