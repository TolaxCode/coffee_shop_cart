import 'package:coffee_app/model/coffee.dart';
import 'package:coffee_app/model/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyTile extends StatelessWidget {
  Coffee coffee;
  Function()? onPressed;
  Widget icons;

  MyTile(
      {super.key,
      required this.coffee,
      required this.onPressed,
      required this.icons});

  @override
  Widget build(BuildContext context) {
   
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.brown[300],
      ),
      child: ListTile(
        leading: Image.asset(coffee.imagePath),
        title: Text(
          coffee.name,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          '\$ ${coffee.price}',
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        trailing: IconButton(
          onPressed: onPressed,
          icon: icons,
        ),
      ),
    );
  }
}
