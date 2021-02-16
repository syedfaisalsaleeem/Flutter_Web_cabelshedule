import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class ButtonsRowD extends StatelessWidget {
  int currentindex;
  Function add;
  Function deactivate;
  Function listb;
  Function reactivate;
  Function permanentlydelete;
  Function update;
  ButtonsRowD({this.currentindex,this.add, this.deactivate, this.update, this.reactivate, this.listb, this.permanentlydelete});

  Widget build(BuildContext context) {
    return Container(
      child:Row(
        children: [
          Expanded(child: Container(color:Colors.black),flex:1),
          Expanded(child: Container(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                primary: currentindex==0?HexColor("#2B31C9"):HexColor("#EAEBEF"), // background
                onPrimary: currentindex==0?Colors.white:Colors.black, // foreground
              ),
                onPressed: ()=>{
               listb()

              }, child: Text("List",style: TextStyle(fontSize: 14,color:currentindex==0?Colors.white:Colors.black),)),
              SizedBox(width:5),
              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                primary: currentindex==1?HexColor("#2B31C9"):HexColor("#EAEBEF"), // background
                onPrimary: currentindex==1?Colors.white:Colors.black, // foreground
              ),
                onPressed: ()=>{ add()}, child: Text("Add",style: TextStyle(fontSize: 14,color:currentindex==1?Colors.white:Colors.black))),
              SizedBox(width:5),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                primary: currentindex==2?HexColor("#2B31C9"):HexColor("#EAEBEF"), // background
                onPrimary: currentindex==2?Colors.white:Colors.black, // foreground
              ),onPressed: ()=>{update()}, child: Text("Update",style: TextStyle(fontSize: 14,color:currentindex==2?Colors.white:Colors.black))),
              SizedBox(width:5),
              ElevatedButton(                  
                style: ElevatedButton.styleFrom(
                primary: currentindex==3?HexColor("#2B31C9"):HexColor("#EAEBEF"), // background
                onPrimary: currentindex==3?Colors.white:Colors.black, // foreground
              ),onPressed: ()=>{deactivate()}, child: Text("Deactivate",style: TextStyle(fontSize: 14,color:currentindex==3?Colors.white:Colors.black))),
              SizedBox(width:5),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                primary: currentindex==4?HexColor("#2B31C9"):HexColor("#EAEBEF"), // background
                onPrimary: currentindex==4?Colors.white:Colors.black, // foreground
              ),onPressed: ()=>{reactivate()}, child: Text("Reactivate",style: TextStyle(fontSize: 14,color:currentindex==4?Colors.white:Colors.black))),
              SizedBox(width:5),
              ElevatedButton(                  
                style: ElevatedButton.styleFrom(
                primary: currentindex==5?HexColor("#2B31C9"):HexColor("#EAEBEF"), // background
                onPrimary: currentindex==5?Colors.white:Colors.black, // foreground
              ),onPressed: ()=>{permanentlydelete()}, child: Text("Permanently Delete",style: TextStyle(fontSize: 14,color:currentindex==5?Colors.white:Colors.black))),

            ],)
          ),flex:15),
          Expanded(child: Container(color:Colors.teal),flex:1)
        ],)
      
    );
  }
}