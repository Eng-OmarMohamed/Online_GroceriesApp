import 'package:flutter/material.dart';
import '../BarBottom.dart';
import '../screens/cartScreen.dart';
import '../screens/explorScreen.dart';
import '../screens/profilePage.dart';
import '../screens/shopScreen.dart';

class MainScreen extends StatefulWidget {

  final String username;
  final String email;
  const MainScreen({super.key, required this.username, required this.email});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;


  late final List<Widget> _screens = [
    ShopScreen(),
    ExplorScreen(),
    CartScreen(),
    ProfilePage(username: widget.username , email: widget.email)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BarBottom(
        onTap: (index) {
          setState(() => _currentIndex = index);
        },
      ),
    );
  }
}