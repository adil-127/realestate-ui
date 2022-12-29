import 'package:flutter/material.dart';
import 'package:assgn_realestate_ui/utils/constants.dart';
class button1 extends StatelessWidget {
  String text ="";
  button1({this.text=""});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Text(text, style: TextStyle(
          color: Colors.white,
          fontSize: 18
        ),),
      )),
      decoration: BoxDecoration(color: Color(themecolor),borderRadius: BorderRadius.circular(20), boxShadow: [
      BoxShadow(
        color: Color(themecolor),
        offset: Offset(2.0, 2.0),
        blurRadius: 10.0,
      ),
    ],
    ),
      
    );
  }
}