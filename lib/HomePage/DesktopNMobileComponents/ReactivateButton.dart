import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ReactivateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(children: [
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(onPressed: (){},child:Text("Reactivate",style: TextStyle(color: Colors.white),),color: HexColor("#2B31C9")),
              SizedBox(width: 10,),
              RaisedButton(onPressed: (){},child:Text("Clear",style: TextStyle(color: Colors.white),),color: HexColor("#2B31C9")),
          ],)
      ],)
    );
  }
}