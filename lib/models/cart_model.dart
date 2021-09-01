import 'package:equatable/equatable.dart';
import 'package:flutter_ecommerce_v1/models/models.dart';

class Cart extends Equatable {
  final List<Product> products;
  const Cart({this.products = const <Product>[]});

  String get subTotalString => subTotal.toStringAsFixed(2);

  String get deliveryFeeString => deliveryFee(subTotal).toStringAsFixed(2);
  String get freeDeliveryString => freeDelivery(subTotal);
  String get totalString => total(subTotal, deliveryFee).toStringAsFixed(2);

  double get subTotal => products.fold(0, (previousValue, element) => previousValue + element.price!);

  Map productQuantity(products){
    var quantity = Map();

    products.forEach((p){
      if(!quantity.containsKey(p)){
        quantity[p] = 1;
      } else{
        quantity[p] +=1;
      }
    });

    return quantity;
  }

  double total(subtotal, deliveryFee){
    return subTotal + deliveryFee(subtotal);
  }

  String freeDelivery(subTotal){
    if(subTotal >= 30){
      return "You have FREE Delivery";
    } else{
      double missing = 30.0-subTotal;
      return "Add \$${missing.toStringAsFixed(2)} for FREE Delivery";
    }
  }

  double deliveryFee(subTotal){
    if(subTotal>=30){
      return 0;
    } else{
      return 10;
    }
  }

  @override
  // TODO: implement props
  List<Object?> get props => [products];
}
