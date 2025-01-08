import 'package:flutter/material.dart';
import 'package:yukis/models/food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
        name: "Salmon Sushi",
        imagePath: "lib/images/salmon.png",
        price: "R149.99",
        rating: "8.8/10"),
    Food(
        name: "Suzuka Tuna",
        imagePath: "lib/images/tuna.png",
        price: "R119.99",
        rating: "9.6/10"),
    Food(
        name: "Caviar Delight",
        imagePath: "lib/images/caviar.png",
        price: "R299.99",
        rating: "9.1/10"),
  ];

// customer cart
  List<Food> _cart = [];

// getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get ccart => _cart;

  // add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }

    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Food foodItem) {
    _cart.remove(foodItem);
    notifyListeners();
  }
}
