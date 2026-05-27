import 'package:flutter/material.dart';
import 'package:online_groceries_app/signup.dart';
import 'AppColor.dart';
import 'HomePage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColor.bg_LoginPage1,
                AppColor.bg_LoginPage2,
                AppColor.bg_LoginPage3,
                AppColor.bg_LoginPage4,
              ],
              stops: [0.0, 0.3, 0.6, 1.0],
            ),
          ),
          child: Column(
            children: [
             Transform.translate(offset: Offset(0, 40),
              child: Image.asset(
                 "assets/images/carrot_Login.png",
                 width : 170,
                 height: 170,
               ),),
              SizedBox(height: 60,),
              Transform.translate(offset: Offset(-135, 0) ,
              child: Text("Loging" , style: TextStyle(
                fontSize: 27,
                fontWeight: FontWeight.bold,
                color: AppColor.LogingText,
              ),),),
              Transform.translate(offset: Offset(-80, 4) ,
                child: Text("Enter your emails and password" ,
                  style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: AppColor.DownText_Loging,
                ),),),
              Transform.translate(offset: Offset(-155, 40) ,
                child: Text("Email" ,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color:AppColor.DownText_Loging,
                  ),),),
              SizedBox(height: 35),
              TextFormField(
                style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 17,
              ),
                decoration: InputDecoration(
                suffixIcon: Icon(
                       Icons.email_outlined,
                       color: Colors.teal,
                       size: 20,
                     ),
                contentPadding: EdgeInsets.only(top: 10, left: 15),
                 ),
              ),
              Transform.translate(offset: Offset(-140, 40) ,
                child: Text("Password" ,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color:AppColor.DownText_Loging,
                  ),),),
              SizedBox(height: 35),
              TextFormField(
                  obscureText: !isVisible,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 17,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          if (isVisible == true) {
                            isVisible = false;
                          } else {
                            isVisible = true;
                          }
                        });
                      }, icon:
                    isVisible ? Icon(
                      Icons.visibility ,
                      color: Colors.red ,
                      size: 20,)
                    : Icon(
                      Icons.visibility_off ,
                      color: Colors.red ,
                      size: 20,),
                    ),
                    contentPadding: EdgeInsets.only(top: 10, left: 15),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Your Email !";
                    }
                    return null;
                  }
              ),
              Transform.translate(offset: Offset(120, 10) ,
                child: Text("Forget Password?" , style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),),),
              SizedBox(height: 35),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(353, 67),
                      backgroundColor: AppColor.button_OnBording_Page)
                  ,onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              }, child: Text("Log in" ,
                style: TextStyle(
                  fontSize: 18.6,
                  fontWeight: FontWeight.bold,
                  color: AppColor.TextButton_OnBording,
                ),
              )
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don’t have an account?" ,
                    style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold
                    ),
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp_Page()),
                    );
                  }, child: Text("Sign Up" ,
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),))
                ],
              )
            ],
          )
      ),
    );
  }
}
