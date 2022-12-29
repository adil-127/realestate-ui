import 'dart:math';

import 'package:assgn_realestate_ui/custom/textfield.dart';
import 'package:flutter/material.dart';
import 'package:assgn_realestate_ui/utils/constants.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
 
  @override
  Widget build(BuildContext context) {
      double widtha=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
         leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back,color: Colors.black,), iconSize:(30),
         ),
      ),
      body:
      
       Padding(
         padding:  EdgeInsets.symmetric(horizontal:widtha*0.05),
         child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
             children: [
              Container(
                width:widtha,
                child: Center(child: Image.asset("assets/images/1_screen2.png",fit: BoxFit.cover,)),
              ),
              Text("LOGIN TO YOUR ACCOUNT"),
              text_field(left_icon: Icons.mail,Icon_color: Colors.black),
              text_field(left_icon: Icons.lock_open,Icon_color: Colors.black,right_icon: Icons.remove_red_eye), 
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.remember_me),
                Text("Remember me")
              ],
             ),
             ElevatedButton(onPressed: (){}, child: Text("Sign in")),
                Container(
                  child: Text("Forget Your Password?"),
                ),
           Divider(
             thickness: 1,
             color: Colors.black,
             height: 1,
           ),
        
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
          
              Container(
                width: 70,
                height: 50,
                child: IconButton(onPressed: (){}, icon: Image(image: AssetImage("assets/images/facebook.png"),width: 25,height: 25,),),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
               borderRadius: BorderRadius.circular(10),
                ),
                ),

                 Container(
                width: 70,
                height: 50,
                child: IconButton(onPressed: (){}, icon: Image(image: AssetImage("assets/images/google.png"),width: 25,height: 25,),),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
               borderRadius: BorderRadius.circular(10),
                ),
                ),

                 Container(
                width: 70,
                height: 50,
                child: IconButton(onPressed: (){}, icon: Image(image: AssetImage("assets/images/apple.png"),width: 25,height: 25,),),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
               borderRadius: BorderRadius.circular(10),
                ),
                ),
            ],
           ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Dont have an account ?  "),
              Text("Sign up",style: TextStyle(color: Color(themecolor)),)
            ],
           ),

             ],
      ),
       ),
      
    backgroundColor: Colors.white,
    );
  }
}