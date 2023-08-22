import 'package:coffee_app/model/coffee.dart';
import 'package:flutter/material.dart';

class CoffeShop extends ChangeNotifier {
  //create list coffee for sale
  final List<Coffee> _shop = [
    //Latte
    Coffee(
      name: 'Latte',
      price: '2.5',
      imagePath: 'assets/images/c1.png',
    ),
    //Cuppucino
    Coffee(
      name: 'Cuppucino',
      price: '2.89',
      imagePath: 'assets/images/c2.png',
    ),
    //Amaricano
    Coffee(
      name: 'Amaricano',
      price: '3.9',
      imagePath: 'assets/images/c3.png',
    ),
    //Black Coffe
    Coffee(
      name: 'Black Coffe',
      price: '2.87',
      imagePath: 'assets/images/c4.png',
    ),
    //Hot Coffee
    Coffee(
      name: 'Hot Coffee',
      price: '2.5',
      imagePath: 'assets/images/c5.png',
    ),
  ];

  //list coffee cart
  final List<Coffee> _userCart = [];

  //get list coffe shop
  List<Coffee> get coffeeShop => _shop;

  //get usercart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffe) {
    _userCart.add(coffe);
    notifyListeners();
  }

  //remove item to cart
  void removeItemToCart(Coffee coffe) {
    _userCart.remove(coffe);
    notifyListeners();
  }
}
