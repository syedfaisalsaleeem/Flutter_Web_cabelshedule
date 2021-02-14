import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class CabelSheduleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color:HexColor("#2B31C9"),
              border:Border(
                top:BorderSide(width:1,color:Colors.black) )
            ),
            height:40,
            width: 170,
            alignment: Alignment.center,
            
            child: Text("Cabel Shedule List",style:TextStyle(fontSize: 14,color:Colors.white,fontWeight: FontWeight.w500)),
          ),
          Expanded(flex:1,child: Container(
            height: 40,
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(width: 1,color: Colors.black),
              left: BorderSide(width: 1,color: Colors.black),
              right: BorderSide(width: 1,color: Colors.black),
              )
            ),
            
            )),
          Container(
            height: 40,
            width:70,
            decoration: BoxDecoration(
              color:HexColor("#2B31C9"),
              border:Border(
                top:BorderSide(width:1,color:Colors.black) )
            ),
            alignment: Alignment.center,
            child:Icon(Icons.arrow_drop_down_circle,color: Colors.white,)
          )
        ],)
    );
  }
}