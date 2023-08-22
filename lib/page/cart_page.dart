import 'package:coffee_app/model/coffee.dart';
import 'package:coffee_app/model/coffee_shop.dart';
import 'package:coffee_app/widget/my_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    //remove from cart
    void removeFromCart(Coffee coffee) {
      Provider.of<CoffeShop>(context, listen: false).removeItemToCart(coffee);
    }

    return SafeArea(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'M Y C A R T ',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Consumer<CoffeShop>(
            builder: (context, value, child) {
              return Expanded(
                child: ListView.builder(
                  itemCount: value.userCart.length,
                  itemBuilder: (context, index) {
                    Coffee eachCoffee = value.userCart[index];
                    return MyTile(
                      coffee: eachCoffee,
                      onPressed: () => removeFromCart(eachCoffee),
                      icons: const Icon(Icons.remove_circle_outline),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
