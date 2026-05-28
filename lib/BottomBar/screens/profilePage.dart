import 'package:flutter/material.dart';

import '../../Screens/Login.dart';

class _MenuItem {
  final String label;
  final IconData icon;
  final String route;
  const _MenuItem(this.label, this.icon, this.route);
}

const _menuItems = [
  _MenuItem('Orders',           Icons.shopping_bag_outlined,  '/orders'),
  _MenuItem('My Details',       Icons.person_outline,         '/my-details'),
  _MenuItem('Delivery Address', Icons.location_on_outlined,   '/delivery-address'),
  _MenuItem('Payment Methods',  Icons.credit_card_outlined,   '/payment-methods'),
  _MenuItem('Promo Code',       Icons.local_offer_outlined,   '/promo-code'),
  _MenuItem('Notifications',    Icons.notifications_outlined, '/notifications'),
  _MenuItem('Help',             Icons.help_outline,           '/help'),
  _MenuItem('About',            Icons.info_outline,           '/about'),
];

class ProfilePage extends StatefulWidget {
  final String username;
  final String email;

  const ProfilePage({super.key, required this.username, required this.email,});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F0),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(14),
          child: Column(
            children: [
              SizedBox(height: 35),
              Header(context),
              SizedBox(height: 35),
              MenuCard(context),
              SizedBox(height: 35),
              LogOutButton(),
            ],
          ),
        ),
      ),
    );
  }

  // Header
  Widget Header(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: NetworkImage('https://media-cldnry.s-nbcnews.com/image/upload/t_fit-760w,f_auto,q_auto:best/rockcms/2025-10/251027-lionel-messi-nightly-02-cs-d18258.jpg'),
        ),
        SizedBox(width: 17),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    widget.username,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold , color: Colors.black),
                  ),
                  SizedBox(width: 6),
                ],
              ),
              SizedBox(height: 2),
              Text(
                widget.email,
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Menu Card
  Widget MenuCard(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color:  Color(0xFFE8E8E8), width: 0.5),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: _menuItems.length,
        separatorBuilder: (_, __) =>  Divider(height: 0, thickness: 0.5),
        itemBuilder: (context, index) {
          final item = _menuItems[index];
          return ListTile(
            leading: Icon(item.icon, color:  Color(0xFF333333)),
            title: Text(item.label, style:  TextStyle(fontSize: 14)),
            trailing:  Icon(Icons.chevron_right, color: Colors.grey),
          );
        },
      ),
    );
  }

  // Log Out
  Widget LogOutButton() {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        icon:  Icon(Icons.logout, color: Color(0xFF4CAF72)),
        label:  Text('Log Out', style: TextStyle(color: Color(0xFF4CAF72))),
        style: OutlinedButton.styleFrom(
          backgroundColor:  Color(0xFFF0FAF4),
          side:  BorderSide(color: Color(0xFFC8EAD5)),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          padding:  EdgeInsets.symmetric(vertical: 14),
        ), onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
      ),
    );
  }
}