import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SubmitButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(children: [
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                ElevatedButton(  
                style: ElevatedButton.styleFrom(
                primary: HexColor("#2B31C9"), // background
                onPrimary: Colors.white, // foreground
              ),onPressed: (){},child:Text("Submit",style: TextStyle(color: Colors.white),)),
              SizedBox(width: 10,),
               ElevatedButton(  
                style: ElevatedButton.styleFrom(
                primary: HexColor("#2B31C9"), // background
                onPrimary: Colors.white, // foreground
              ),onPressed: (){},child:Text("Clear",style: TextStyle(color: Colors.white),)),
          ],)
      ],)
    );
  }
}