import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class navbar extends StatelessWidget {
  void Function(int)? onTabChange;
  navbar({super.key, required this.onTabChange });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: GNav(
        color: Color.fromRGBO(109, 185, 141, 1),
        activeColor: Color.fromRGBO(149, 255, 195, 1),
        tabActiveBorder: Border.all(color: Color.fromRGBO(255, 201, 185, 1)),
        tabBackgroundColor: Color.fromARGB(180, 221, 177, 227),
        tabBorderRadius: 20,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: (value) => onTabChange!(value),
        gap: 5,
        tabs: [
          GButton(icon: Icons.home,text: 'Home',),
          GButton(icon: Icons.shopping_bag_rounded,text: 'Shop',),
          GButton(icon: Icons.shopping_cart_rounded,text: 'Cart',),
        ]
      ),
    );
  }
}
