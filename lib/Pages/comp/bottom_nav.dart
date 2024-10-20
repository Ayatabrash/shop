// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class bottnNav extends StatelessWidget {
  void Function(int)? onTabChange;
  bottnNav({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey.shade700,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 16,
          gap: 8,
          onTabChange: (value) => onTabChange!(value),
          tabs: const [
            GButton(
              icon: Icons.home,
              text: "shop",
            ),
            GButton(
              icon: Icons.shopping_bag,
              text: "Cart",
            )
          ]),
    );
  }
}