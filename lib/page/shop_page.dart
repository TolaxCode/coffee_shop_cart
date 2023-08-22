import 'package:coffee_app/model/coffee.dart';
import 'package:coffee_app/model/coffee_shop.dart';
import 'package:coffee_app/widget/my_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add coffee to cart
  void addToCart(Coffee coffee) {
    Provider.of<CoffeShop>(context, listen: false).addItemToCart(coffee);
    //show dialog
    print('Sucessfull');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Consumer<CoffeShop>(
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const Text(
                'M E N U',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.coffeeShop.length,
                  itemBuilder: (context, index) {
                    Coffee eachCoffee = value.coffeeShop[index];
                    return MyTile(
                      icons: const Icon(Icons.add),
                      coffee: eachCoffee,
                      onPressed: () => addToCart(eachCoffee),
                    );
                  },
                ),
              )
            ],
          ),
        );
      },
    ));
  }
}
