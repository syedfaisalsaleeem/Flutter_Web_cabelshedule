import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Category.dart';

class UpdateCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      elevation: 5,
          child: Container(
        width: 450,
        height:590,
        color:Colors.white,
        child:Column(children: [
          SizedBox(height:20),
          Container(
            child:Text("Update a Category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
          ),
          SizedBox(height:10),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("Search Schedule Name"),
            SizedBox(width:20),
            Container(
                margin: EdgeInsets.only(top:10),
                width:100,
                height: 40,
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child:TextField(
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15,color: HexColor("#7B788A"),decoration: TextDecoration.none ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left:10),
                      border: OutlineInputBorder(),
                      hintText: '',
                      hintStyle: TextStyle(fontSize: 15,color: HexColor("#7B788A") )
                  ),
                ),),
          SizedBox(width:10),
          IconButton(icon: Icon(Icons.cancel,size: 18,), onPressed: (){}),

          ],),
          Divider(),
          Category()

        
        ],),
      ),
    );
  }
}