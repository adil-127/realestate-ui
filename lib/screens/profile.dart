import 'dart:ui';
import 'package:assgn_realestate_ui/custom/button.dart';
import 'package:flutter/material.dart';
import 'package:assgn_realestate_ui/custom/textfield.dart';
import 'package:assgn_realestate_ui/utils/constants.dart';


class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    double widtha=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
         elevation: 0,
        backgroundColor: Colors.transparent,
         leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back,color: Colors.black,), iconSize:(30),
          ),
          title: Text("Fill Your Profile",style: TextStyle(color: Colors.black),),
      ),


      body: Padding(
     padding:  EdgeInsets.symmetric(horizontal:widtha*0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
          Center(
            child: Stack(
              children: [ Container(
                
                child: Image.asset("assets/images/user.png",width: 200,fit: BoxFit.cover,),
                
              ),
              Positioned(
                bottom: 0 ,
                right: 0,
                child:
              Container(
                width: 50,
                height: 50,
               
                child: Icon(Icons.edit,color: Colors.white,size: 30,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                   color: Color(themecolor),
                ),
              )),
              ],
            ),
          ),
          text_field(place_holder: "full Name",),
           text_field(place_holder: "Nick Name",),
            text_field(place_holder: "Date of Birth",right_icon: Icons.calendar_month,),
             text_field(place_holder: "Email",right_icon:Icons.mail),
              text_field(place_holder: "Gender",right_icon: Icons.arrow_drop_down_rounded,),
              button1(text: "continue",)
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}