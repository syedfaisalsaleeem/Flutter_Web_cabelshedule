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
      // color: Colors.green,
      child:Row(
        children: [
          Expanded(child: Container(color:Colors.black),flex:1),
          Expanded(child: Container(
            // color: Colors.blueGrey,
            
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              RaisedButton(onPressed: ()=>{
               listb()

              }, child: Text("List",style: TextStyle(fontSize: 14,color:currentindex==0?Colors.white:Colors.black),),color:currentindex==0?HexColor("#2B31C9"):HexColor("#EAEBEF")),
              SizedBox(width:5),
              RaisedButton(onPressed: ()=>{ add()}, child: Text("Add",style: TextStyle(fontSize: 14,color:currentindex==1?Colors.white:Colors.black)),color:currentindex==1?HexColor("#2B31C9"):HexColor("#EAEBEF"),),
              SizedBox(width:5),
              RaisedButton(onPressed: ()=>{update()}, child: Text("Update",style: TextStyle(fontSize: 14,color:currentindex==2?Colors.white:Colors.black)),color:currentindex==2?HexColor("#2B31C9"):HexColor("#EAEBEF")),
              SizedBox(width:5),
              RaisedButton(onPressed: ()=>{deactivate()}, child: Text("Deactivate",style: TextStyle(fontSize: 14,color:currentindex==3?Colors.white:Colors.black)),color:currentindex==3?HexColor("#2B31C9"):HexColor("#EAEBEF")),
              SizedBox(width:5),
              RaisedButton(onPressed: ()=>{reactivate()}, child: Text("Reactivate",style: TextStyle(fontSize: 14,color:currentindex==4?Colors.white:Colors.black)),color:currentindex==4?HexColor("#2B31C9"):HexColor("#EAEBEF")),
              SizedBox(width:5),
              RaisedButton(onPressed: ()=>{permanentlydelete()}, child: Text("Permanently Delete",style: TextStyle(fontSize: 14,color:currentindex==5?Colors.white:Colors.black)),color:currentindex==5?HexColor("#2B31C9"):HexColor("#EAEBEF")),

            ],)
          ),flex:15),
          Expanded(child: Container(color:Colors.teal),flex:1)
        ],)
      
    );
  }
}