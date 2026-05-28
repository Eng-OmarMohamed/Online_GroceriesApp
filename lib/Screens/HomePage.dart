import 'package:flutter/material.dart';
import 'package:online_groceries_app/core/AppColor.dart';
import '../BottomBar/Linking/LinkingBottomBar.dart';
class HomePage extends StatefulWidget {
  final String username;
  final String email;
  const HomePage({super.key, required this.username, required this.email});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MainScreen(username: widget.username,email: widget.email),
      backgroundColor: AppColor.bg_HomePage,
    );
  }
}
