import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyButtonNavbar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyButtonNavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        mainAxisAlignment: MainAxisAlignment.center,
        tabBackgroundColor: Colors.brown,
        tabBorder: Border.all(color: Colors.white),
        tabBorderRadius: 10,
        tabs: const [
          //home page
          GButton(
            icon: Icons.shopping_cart_outlined,
            text: 'Shop',
          ),
          //Cart page
          GButton(
            icon: Icons.shopping_bag_outlined,
            text: 'Cart',
          ),
        ],
      ),
    );
  }
}
