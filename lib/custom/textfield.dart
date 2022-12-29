import 'package:flutter/material.dart';
import 'package:assgn_realestate_ui/utils/constants.dart';

class text_field extends StatelessWidget {
  var left_icon= null;
  var right_icon=null;
  var Icon_color=null;
  String place_holder = "";
  text_field({this.left_icon,this.right_icon,this.Icon_color, this.place_holder=""});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
                
                decoration: InputDecoration(
                  prefixIcon: Icon(left_icon,color: Icon_color),
                  suffixIcon: Icon(right_icon,color: Icon_color),
                  fillColor: Color(textfield_bgcolor),
                  hintText: place_holder,
                  filled: true,
                 border: UnderlineInputBorder(borderSide: BorderSide.none),

                ),                  
              );
    
  }
}