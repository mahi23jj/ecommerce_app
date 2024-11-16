

import 'package:flutter/material.dart';


class Service extends ChangeNotifier {

  bool _obscureText = false ;
  bool get obscureText => _obscureText;
  
  void toggle(){
    _obscureText = !_obscureText;
    notifyListeners();
  }
  List<Product> _items = [];
  

  List<Product> get items => _items;
 
  void addItem(Product product) async{
      _items.add(product);
      notifyListeners();
  }

  
  

  

  //double get totalPrice {
    //return _items.fold(0, (sum, item) => sum + item.prices);
 // }

}

class Product {

  String title;
  String prices;
  String image;
  Product({required this.title,required this.prices,required this.image});

  Map<String, dynamic> toJson() {
    return {
      
      'title': title,
      'price': prices,
      'image':image
    };
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      
      title: json['title'],
      prices: json['price'],
      image: json['image']
    );
  }
}
class Item {
  final String id;
  final String name;

  Item({required this.id, required this.name});
}



