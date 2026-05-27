import 'package:flutter/material.dart';
import '../core/AppColor.dart';
import 'onBording.dart';

class Splash_screen extends StatelessWidget {
  const Splash_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bg_splashScreen_Page,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
             Transform.translate(offset:Offset(-20, 0),
               child:Image.asset(
                 "assets/images/carrot.png",
                 height: 170,
                 width: 170,
               ),),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Transform.translate(offset: Offset(-40, 0),
                     child:  Text("nectar", style: TextStyle(
                         fontSize: 70,
                         color: AppColor.splashScreenText,
                         fontWeight: FontWeight.bold
                     ),)
                     ),
                    Transform.translate(offset: Offset(0, -20),
                    child: Transform.translate(offset: Offset(-40, 0),
                        child:  Text("online groceriet", style: TextStyle(
                          fontSize: 13,
                          color: AppColor.splashScreenText,
                          letterSpacing: 5,

                        ),)),)
                    ],
                  ),
              ],
            ),
          ),
          Positioned(
            bottom: 200,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(100, 60),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OnBordingPage()),
                );
              },
              child: Icon(Icons.arrow_forward_ios_outlined)),)
        ],
      )
    );
  }
}