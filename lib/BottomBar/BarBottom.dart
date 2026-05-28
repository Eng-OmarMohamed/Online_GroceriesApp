import 'package:flutter/material.dart';
import '../core/AppColor.dart';

class BarBottom extends StatefulWidget {
  final Function(int) onTap;
  const BarBottom({super.key, required this.onTap});

  @override
  State<BarBottom> createState() => _BarBottomState();
}

class _BarBottomState extends State<BarBottom> {
  static int selectedBottomIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      backgroundColor: AppColor.bg,
      selectedItemColor: AppColor.selected,
      unselectedItemColor: AppColor.unselected,
      type: BottomNavigationBarType.fixed,
      currentIndex: selectedBottomIndex,
      onTap: (index) {
        setState(() {
          selectedBottomIndex = index;
          widget.onTap(index);
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.storefront_outlined),
          activeIcon: Icon(Icons.storefront_rounded),
          label: "Shop",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.manage_search_outlined),
          activeIcon: Icon(Icons.manage_search_rounded),
          label: "Explore",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          activeIcon: Icon(Icons.shopping_cart),
          label: "Cart",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.person_outlined),
          activeIcon: Icon(Icons.person),
          label: "Account",
        ),
      ],
    );
  }
}
