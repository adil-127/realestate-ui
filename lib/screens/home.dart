import 'dart:ui';
import 'package:assgn_realestate_ui/screens/details.dart';

import 'package:assgn_realestate_ui/custom/button2.dart';
import 'package:assgn_realestate_ui/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:assgn_realestate_ui/utils/constants2.dart';

class home_screen extends StatelessWidget {
  const home_screen({super.key});
  @override
  Widget build(BuildContext context)
   {
    double widthb = MediaQuery.of(context).size.width;
    double heightb=MediaQuery.of(context).size.height;
    return Scaffold(
    
     body: 
     Padding(
       padding: EdgeInsets.only(left: widthb*0.08,top: heightb*0.06,right: widthb*0.08),
       
       child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
       children: [
        Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(  
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Text("Location",style: TextStyle(color: Color(textcolor)),),
              Text("Los Angeles,CA",style: TextStyle(color: Color(theme_color)),),
            ],
          ),
          Image.asset("assets/images/profile.png",),
          
        ],
        ),
        // SizedBox(
        //   height: 15,
        // ),
        Row(
          children: [
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Discover Best",style: TextStyle(color: Color(theme_color),fontSize: 26)),
                Text("Suitable Property",style: TextStyle(color: Color(theme_color),fontSize: 26)),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            button2(text: "House",bg_color: Color(theme_color),txt_color:Colors.white),
            button2(text: "Apartment",bg_color: Color(button_bgcolor),txt_color: Color(theme_color),),
            button2(text: "Flat",bg_color: Color(button_bgcolor),txt_color: Color(theme_color),),
            button2(text: "plots",bg_color: Color(button_bgcolor),txt_color: Color(theme_color),)
          ],
        ),
        Column(
          children: [
            Image.asset("assets/images/mainpic.png",fit: BoxFit.fitWidth, scale: 0.1,),

             GestureDetector(
              onTap: () {
                 Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => details(),
              ),
            );
          },
              
               child: Container(
                 decoration: BoxDecoration(
                   color: Color(theme_color),
                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20) )
                 ),
                 width: MediaQuery.of(context).size.width,
                 height: 70,
                 child: Padding(
                   padding: const EdgeInsets.only(left: 20,right: 20),
                   child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         Text("CRAFTSMAN HOUSE",style: TextStyle(color: Color(button_bgcolor),fontFamily: "mulish"),),
                         Text("520 N Btoudry Ave Los Angeles",style: TextStyle(color: Color(button_bgcolor),fontFamily: "mulish")),
                         
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Image.asset("assets/images/bed.png"),
                             Text("4 Beds",style: TextStyle(color: Color(button_bgcolor),fontFamily: "mulish")),
                             Image.asset("assets/images/bath.png"),
                             Text("4 baths",style: TextStyle(color: Color(button_bgcolor),fontFamily: "mulish")),
                             Image.asset("assets/images/car.png"),
                             Text("1 Garage",style: TextStyle(color: Color(button_bgcolor),fontFamily: "mulish")),
                           ],
                         ),
                         
                         ],
                      
                   ),
                  
                 ),
               ),
             ),

             Padding(
               padding: const EdgeInsets.only(top: 20),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Text("Nearby your location ",style: TextStyle(fontFamily: "Mulish",color: Color(theme_color)),),
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(top: 20),
               
               child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/smallpic.png",
                      fit: BoxFit.fitHeight,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 10
                      ),
                      child: Column(
                      
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Ranch Home",style: TextStyle(fontFamily: "mulish")),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text("520 N Btoudry Ave Los Angles",style: TextStyle(fontFamily: "mulish")),
                          ),
                           Padding(
                             padding: const EdgeInsets.only(top: 10),
                             child: Container(
                              width: 200,
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [
                                   Image.asset("assets/images/bed.png", width: 16),
                                   Text("4 Beds", style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: "Mulish"
                                   ),),
                                   Image.asset("assets/images/bath.png", width: 16,),
                                   Text("4 baths", style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: "Mulish"
                                   ),),
                                   Image.asset("assets/images/car.png", width: 16,),
                                   Text("1 Garage", style: TextStyle(
                                    fontSize: 10,
                                    fontFamily: "Mulish"
                                   ),),
                                 ],
                               ),
                             ),
                           ),
                        ],
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(button_bgcolor),
                ),
               ),
             )
          ],
        ),
       
       ],
       ),
       
     ),
     bottomNavigationBar:
     
      BottomAppBar(
      color: Color(theme_color),
      
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Icon(Icons.home_filled,color: Colors.white,),
            Icon(Icons.search,color: Colors.white,),
            Icon(Icons.bookmark_border,color: Colors.white,),
            Icon(Icons.person_rounded,color: Colors.white,),
            
      
          ],
        ),
      ),
         ),
    );
  }
}