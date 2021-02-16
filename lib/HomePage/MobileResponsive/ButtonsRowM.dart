import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class ButtonsRowM extends StatelessWidget {
  int currentindex;
  Function add;
  Function deactivate;
  Function listb;
  Function reactivate;
  Function permanentlydelete;
  Function update;
  ButtonsRowM({this.currentindex,this.add, this.deactivate, this.update, this.reactivate, this.listb, this.permanentlydelete});

  Widget build(BuildContext context) {
    return Container(
      height:90,
      child:Column(
        children: [
          Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                  InkWell(
                    child:Container(
                    padding: EdgeInsets.fromLTRB(6, 5, 6, 5),
                    child: Text("List",style: TextStyle(fontSize: 13,color:currentindex==0?Colors.white:Colors.black),),
                    color:currentindex==0?HexColor("#2B31C9"):HexColor("#EAEBEF")
                    ),
                    onTap: ()=>{
                   listb()

                  }, ),
                  SizedBox(width:5),
                  InkWell(
                    child:Container(
                    padding: EdgeInsets.fromLTRB(6, 5, 6, 5),
                    child: Text("Add",style: TextStyle(fontSize: 13,color:currentindex==1?Colors.white:Colors.black),),
                    color:currentindex==1?HexColor("#2B31C9"):HexColor("#EAEBEF")
                    ),
                    onTap: ()=>{
                   add()

                  }, ),
                  SizedBox(width:5),
                  InkWell(
                    child:Container(
                    padding: EdgeInsets.fromLTRB(6, 5, 6, 5),
                    child: Text("Update",style: TextStyle(fontSize: 13,color:currentindex==2?Colors.white:Colors.black),),
                    color:currentindex==2?HexColor("#2B31C9"):HexColor("#EAEBEF")
                    ),
                    onTap: ()=>{
                   update()

                  }, ),
                  ]),
                  SizedBox(height:20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                
                  SizedBox(width:5),
                  InkWell(
                    child:Container(
                    padding: EdgeInsets.fromLTRB(6, 5, 6, 5),
                    child: Text("Deactivate",style: TextStyle(fontSize: 13,color:currentindex==3?Colors.white:Colors.black),),
                    color:currentindex==3?HexColor("#2B31C9"):HexColor("#EAEBEF")
                    ),
                    onTap: ()=>{
                   deactivate()

                  }, ),
                  SizedBox(width:5),
                  InkWell(
                    child:Container(
                    padding: EdgeInsets.fromLTRB(6, 5, 6, 5),
                    child: Text("Reactivate",style: TextStyle(fontSize: 13,color:currentindex==4?Colors.white:Colors.black),),
                    color:currentindex==4?HexColor("#2B31C9"):HexColor("#EAEBEF")
                    ),
                    onTap: ()=>{
                   reactivate()
                  }, ),
                  SizedBox(width:5),
                  InkWell(
                    child:Container(
                    padding: EdgeInsets.fromLTRB(6, 5, 6, 5),
                    child: Text("Permanently Delete",style: TextStyle(fontSize: 13,color:currentindex==5?Colors.white:Colors.black),),
                    color:currentindex==5?HexColor("#2B31C9"):HexColor("#EAEBEF")
                    ),
                    onTap: ()=>{
                   permanentlydelete()
                  }, ),

                ],),
              
              Expanded(child: Container(color:Colors.white),flex:1)
            ],),
        
      
      
    );
  }
}