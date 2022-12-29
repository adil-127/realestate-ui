import 'package:flutter/material.dart';
import '../utils/constants2.dart';

class button2 extends StatelessWidget {
  var text="";
  var icon=null;
  var bg_color=null;
  var txt_color=null;
  double icon_size;
  var icon_color=null;
  
button2({this.text="",this.icon,this.bg_color,this.txt_color,this.icon_size=0.00,this.icon_color});
  @override
  Widget build(BuildContext context) {
    if(icon == null){
      return Container(
      decoration: BoxDecoration(
        color: bg_color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(child: Text(text,style: TextStyle(color:txt_color),),),
      )
    );
    }
    else{
      return Container(
      decoration: BoxDecoration(
        color: bg_color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Icon(icon,size: icon_size,color: icon_color),
          Text(text,style: TextStyle(color:txt_color ),),      
        ],
      ),
    );
    }
  }
}