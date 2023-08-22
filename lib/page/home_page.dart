import 'package:coffee_app/page/cart_page.dart';
import 'package:coffee_app/page/shop_page.dart';
import 'package:coffee_app/widget/my_bottom_nav.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _isSelect = 0;
  //select index
  void _selectPage(int index) {
    setState(() {
      _isSelect = index;
    });
  }

  //list page
  final List<Widget> _pages = [
    //shop page
    ShopPage(),
    //cart page
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyButtonNavbar(
        onTabChange: (index) => _selectPage(index),
      ),
      body: _pages[_isSelect],
    );
  }
}
