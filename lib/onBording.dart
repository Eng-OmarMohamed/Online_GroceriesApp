import 'package:flutter/material.dart';
import 'package:online_groceries_app/AppColor.dart';

import 'Login.dart';

class OnBordingPage extends StatefulWidget {
  const OnBordingPage({super.key});

  @override
  State<OnBordingPage> createState() => _OnBordingPageState();
}

class _OnBordingPageState extends State<OnBordingPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            alignment: Alignment(0.2, 0.0),
            'assets/images/OnBording.jpg',
            fit: BoxFit.cover,
          ),
        ),
        //
        Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 200),
          Transform.translate(offset: Offset(0, 25),
            child: Image.asset(
              "assets/images/carrot.png",
              width : 150,
              height: 150,
            ),),
          Text("Welcome" , style: TextStyle(
            fontSize: 35,
            color: AppColor.Welcome_toOurStore_Text,
            decoration: TextDecoration.none,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 12),
          Text("to our store" , style: TextStyle(
            fontSize: 35,
            color: AppColor.Welcome_toOurStore_Text,
            decoration: TextDecoration.none,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 10),
          Text("Ger your groceries in as fast as one hour",
            style: TextStyle(
            fontSize: 10,
            color: AppColor.DownText_Welcome,
            decoration: TextDecoration.none,
            fontWeight: FontWeight.bold,
          ),),
          Transform.translate(offset: Offset(0, 40),
          child:  ElevatedButton(
               style: ElevatedButton.styleFrom(
                   minimumSize: Size(353, 67),
                   backgroundColor: AppColor.button_OnBording_Page)
               ,onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          }, child: Text("Get Started" ,
             style: TextStyle(
               fontSize: 17,
               fontWeight: FontWeight.bold,
               color: AppColor.TextButton_OnBording,
             ),
           )
           ))

    ],
        )
    )
    ]
    );
  }
}