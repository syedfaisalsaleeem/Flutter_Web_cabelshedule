import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Category.dart';


class AddCategory extends StatefulWidget {
  @override
  _AddCategoryState createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {

  @override
  Widget build(BuildContext context) {
    return Card(margin: EdgeInsets.only(bottom: 20),
      elevation: 5,
          child: Container(
        width: 450,
        height:590,
        color:Colors.white,
        child:Column(children: [
          SizedBox(height:20),
          Container(
            child:Text("Add a Category",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
          ),
          Divider(),
          SizedBox(height:10),
          Category()

        
        ],),
      ),
    );
  }
}