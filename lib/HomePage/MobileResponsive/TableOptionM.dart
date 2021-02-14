import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TableOptionM extends StatelessWidget {
  changed(){

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding:EdgeInsets.fromLTRB(10, 10, 10, 0),
      // height:70,
      alignment: Alignment.center,
      // color:Colors.grey,
      child:Container(
        // height: 60,
        // color: Colors.indigo,
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Search:",style:TextStyle(fontSize: 12)),
                SizedBox(width:5),
                Container(
                  margin: EdgeInsets.only(top:10),
                  width:90,
                  height: 40,
                  // width:250,
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child:TextField(
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.left,
                    
                    style: TextStyle(fontSize: 15,color: HexColor("#7B788A"),decoration: TextDecoration.none ),
                    decoration: InputDecoration(
                      
                      contentPadding: EdgeInsets.only(left:10),


                        border: OutlineInputBorder(),
                        hintText: 'Search',
                        hintStyle: TextStyle(fontSize: 15,color: HexColor("#7B788A") )
                    ),
                  ),),
                  SizedBox(width:5),
                  FlatButton(color:Colors.grey,onPressed: ()=>{},padding: EdgeInsets.all(0), child: Icon(Icons.arrow_left,size: 19,),minWidth: 2),
                  SizedBox(width:5),
                  FlatButton(color:Colors.grey,onPressed: ()=>{}, padding: EdgeInsets.all(0), child: Icon(Icons.arrow_right,size: 19),minWidth: 2),
                  SizedBox(width:5),
                  Text("1/8",style:TextStyle(fontSize: 12)),
                  SizedBox(width:10),
         
              ],),
              SizedBox(height:10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(onPressed: ()=>{},child:Text("Fields",style: TextStyle(fontSize: 12),),color: HexColor("#EAEBEF"),minWidth: 11,),
                  SizedBox(width:5),
                  FlatButton(onPressed: ()=>{},child:Text("Update",style: TextStyle(fontSize: 12)),color: HexColor("#EAEBEF"),minWidth: 11,),
                  SizedBox(width:5),
                  FlatButton(onPressed: ()=>{},child:Text("Deactivate",style: TextStyle(fontSize: 12)),color: HexColor("#EAEBEF"),minWidth: 11,),
                  SizedBox(width:5),
                  FlatButton(onPressed: ()=>{},child:Text("Reactivate",style: TextStyle(fontSize: 12)),color: HexColor("#EAEBEF"),minWidth: 11,),
                  SizedBox(width:5),
                  FlatButton(onPressed: ()=>{},child:Text("Delete",style: TextStyle(fontSize: 12)),color: HexColor("#EAEBEF"),minWidth: 11,),
                  SizedBox(width:0),
              ],),
              SizedBox(height:20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Transform.scale(scale: 0.7,child: Checkbox(value: true,onChanged:changed())),
                  Text("Non-active",style: TextStyle(fontSize: 11),),
                  SizedBox(width:5),
                  FlatButton(onPressed: ()=>{},child:Text("CSV Export",style: TextStyle(fontSize: 12)),color: HexColor("#EAEBEF"),minWidth: 11,),
                  SizedBox(width:5),
                  FlatButton(onPressed: ()=>{},child:Text("PDF Export",style: TextStyle(fontSize: 12)),color: HexColor("#EAEBEF"),minWidth: 11,),
                  Transform.scale(scale: 0.7,child: Checkbox(value: true,onChanged:changed())),
                  Text("Non Selected",style: TextStyle(fontSize: 11),), 
              ],),
              SizedBox(height:10),
          ],
        ),
      )
    );
  }
}