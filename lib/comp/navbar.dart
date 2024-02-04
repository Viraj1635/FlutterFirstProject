import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class navbar extends StatelessWidget {
  void Function(int)? onTabChange;
  int selectedIn=0;
  navbar({super.key, required this.onTabChange ,this.selectedIn=0});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: GNav(
        color: Colors.grey.shade400,
        activeColor: Colors.white,
        tabActiveBorder: Border.all(color: Colors.grey),
        tabBackgroundColor: Colors.black,
        tabBorderRadius: 20,
        mainAxisAlignment: MainAxisAlignment.center,
        onTabChange: onTabChange!,
        gap: 5,
        selectedIndex:selectedIn,
        tabs: [
          GButton(icon: Icons.home,text: 'Home',),
          GButton(icon: Icons.shopping_bag_rounded,text: 'Shop',),
          GButton(icon: Icons.shopping_cart_rounded,text: 'Cart',),
        ]
      ),
    );
  }
}
