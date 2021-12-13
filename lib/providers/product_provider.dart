import 'package:flutter/material.dart';
import 'package:shopping_app/providers/product.dart';
import 'product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
      Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'A red shirt - it is pretty red!',
      price: 25.25,
      imageUrl:
          'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    ),
    Product(
      id: 'p2',
      title: 'Yellow Scarf',
      description: 'Warm and cozy, what you need for winter',
      price: 30.00,
      imageUrl:
          'https://thumbs.dreamstime.com/z/yellow-knitted-scarf-18952858.jpg',
    ),
    Product(
      id: 'p3',
      title: 'A pan',
      description: 'Prepare any meal you want',
      price: 20.20,
      imageUrl:
          'https://5.imimg.com/data5/CS/XL/MY-910175/master-non-stick-frypan-500x500.png',
    ),
    Product(
      id: 'p4',
      title: 'Trouser',
      description: 'Any style goes beyond',
      price: 10.50,
      imageUrl:
          'https://images.sportsdirect.com/images/products/36206203_l.jpg',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }
  List<Product> get favouriteItems{
    return _items.where((prodItem) => prodItem.isFavourite).toList();
  }
  Product findById(String id){
    return _items.firstWhere((prod) => prod.id==id);
  }

  addProduct() {
    notifyListeners();
  }
}
