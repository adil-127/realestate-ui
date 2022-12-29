import 'package:assgn_realestate_ui/custom/button2.dart';
import 'package:assgn_realestate_ui/main.dart';
import 'package:assgn_realestate_ui/screens/home.dart';
import 'package:assgn_realestate_ui/utils/constants.dart';
import 'package:assgn_realestate_ui/utils/constants2.dart';
import 'package:flutter/material.dart';

class details extends StatelessWidget {
  const details({super.key});
  

  @override
  Widget build(BuildContext context) {
    double widthb = MediaQuery.of(context).size.width;
    double heightb=MediaQuery.of(context).size.height;
    return Scaffold(
     body: Padding(
      padding: EdgeInsets.only(left: widthb*0.08,top: heightb*0.09,right: widthb*0.08,bottom: heightb*0.05  ),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Details",style: TextStyle(color: Color(theme_color),fontSize: 30,fontFamily: 'Mulish'),),
              
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop(
                    MaterialPageRoute(builder: (context) => home_screen(),
                    
                    )
                    );
                  },
                  child: button2(icon: Icons.chevron_left_rounded,icon_size: 50,bg_color: Color(button_bgcolor),),
                ),
              )
            ],
          ),
       ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset('assets/images/details_main.png'),
       ),
          SizedBox(),

          Stack(
            children:[ ListTile(
          
              title: Text("CRAFTSMAN HOUSE",style: TextStyle(color: Color(theme_color),fontFamily: 'Mulish'),),
              subtitle: Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                   
                    children: [
                    Text("520 N Beaudry Ave, Los Angeles",style: TextStyle(color: Color(theme_color),fontFamily: 'Mulish'),),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset("assets/images/bed.png"),
                          Text("4 beds",style: TextStyle(color: Color(theme_color),fontFamily: 'Mulish'),),
                          Image.asset("assets/images/bath.png"),
                          Text("4 baths",style: TextStyle(color: Color(theme_color),fontFamily: 'Mulish'),),
                           Image.asset("assets/images/car.png"),
                          Text("1 Garage",style: TextStyle(color: Color(theme_color),fontFamily: 'Mulish'),),
                        ],
                      ),
                    ),
                    ],
                  ),
                ),
              ),
              
            
            ),
            Positioned(
              top: 2,
              right: 5,
              bottom: 30,
              left: 280,

              child: button2(
                icon: Icons.bookmark_border_outlined,icon_size: 30,bg_color: Color(button_bgcolor),)
                )
            ]
          ),
          ListTile(
            leading: Image.asset("assets/images/user.png"),
            title: Text("Rebecca Tetha"),
            subtitle: Text("Owner Craftsman House",style: TextStyle(color: Color(theme_color),fontFamily: 'Mulish'),),
            trailing:  Container(
              width: 60,
              height: 30,
              child: button2(icon: Icons.call,icon_size: 10,bg_color:Color(theme_color),text: "Call",txt_color: Colors.white,icon_color: Colors.white,)
              ),
          ),
          Text("Completely redone in 2021. 4 bedrooms. 2 bathrooms. 1 garahe. amazing curb oppeal and enterain areawater vews. Tons of built-ins & extras. Read More",style: TextStyle(color: Color(theme_color),fontFamily: 'Mulish'),),

       
       
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset("assets/images/DETAILS_1.png",),
                ),
              ),
                 Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset("assets/images/details_2.png",),
                ),
              ),

                Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset("assets/images/details_3.png",),
                ),
              ),

                Stack(
                  children:[ Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Opacity(
                      opacity: 0.5,
                      child: Image.asset("assets/images/details 4.png",)),
                  ),
                              ),
                    Positioned(
                      top: 5,
                      bottom: 5,
                      left: 5,
                      right: 5,
                      child: Image.asset("assets/images/more.png")
                      
                      )
                  ]
                ),               
            ],
          ),

          Row(
            children: [
              Text("Price",style: TextStyle(color: Color(theme_color)),),
            ],
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("\$990000",style: TextStyle(color: Color(theme_color),fontFamily: 'Mulish'),),
           button2(text: "BUY NOW",bg_color: Color(theme_color),txt_color:Colors.white)
            ],
          ),
        ],
       ),
     ),
    );
  }
}