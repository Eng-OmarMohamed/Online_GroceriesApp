import 'package:flutter/material.dart';
import '../core/AppColor.dart';
import 'HomePage.dart';
import 'Login.dart';

class SignUp_Page extends StatefulWidget {
  const SignUp_Page({super.key});

  @override
  State<SignUp_Page> createState() => _SignUp_PageState();
}

class _SignUp_PageState extends State<SignUp_Page> {
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
              SizedBox(height: 50,),
              Transform.translate(offset: Offset(-135, 0) ,
                child: Text("Sign Up" , style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: AppColor.LogingText,
                ),),),
              Transform.translate(offset: Offset(-80, 4) ,
                child: Text("Enter your credentials to continue" ,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: AppColor.DownText_Loging,
                  ),),),
              Transform.translate(offset: Offset(-140, 40) ,
                child: Text("UserName" ,
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
                    Icons.person,
                    color: Colors.indigo,
                    size: 20,
                  ),
                  contentPadding: EdgeInsets.only(top: 10, left: 15),
                ),
              ),
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
              Wrap(
                children: [
                  Text("By continuing you agree to our ",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),),
                  Text("Terms of Service ",
                  style: TextStyle(
                    color: Colors.greenAccent,
                    fontWeight: FontWeight.bold,
                  ),),
                  Text("and ",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                    ),),
                  Text("Privacy Policy.",
                    style: TextStyle(
                      color: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                    ),),
                ],
              ),
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
              }, child: Text("Sign Up" ,
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
                  Text("Already have an account?" ,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
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
