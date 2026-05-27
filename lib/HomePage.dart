import 'package:flutter/material.dart';

import 'BarBottom.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BarBottom(),
      backgroundColor: Colors.white,
      body : 
    );
  }
}
