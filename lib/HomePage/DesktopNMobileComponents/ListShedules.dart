import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class ListShedules extends StatefulWidget {
  @override
  _ListShedulesState createState() => _ListShedulesState();
}

class _ListShedulesState extends State<ListShedules> {
    String dropdownValue1 = 'Kusile';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child:Column(
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            child:Text("List Shedules",style:TextStyle(fontSize: 14))
          ),
          SizedBox(
            width:5
          ),
          RaisedButton(onPressed: ()=>{},child:Text("Refresh")),
          SizedBox(width:5),
          RaisedButton(onPressed: ()=>{},child:Text("Filter")),
        ],),
        SizedBox(height:10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child:Text("Site")
            ),
            SizedBox(width:5),
            Container(
              margin: EdgeInsets.fromLTRB(0,9.36,0,0),
              width:100,
              alignment:Alignment.topLeft ,
              child:Container(
                padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                height: 34,
                width:99,
                decoration: ShapeDecoration(
                  color: Color.fromRGBO(239, 239, 239, 0.2),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.0, style: BorderStyle.solid, color: Color.fromRGBO(18, 18, 20, 0.1)),
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  ),
                ),
                child:DropdownButton<String>(

                  value: dropdownValue1,
                  isExpanded: true,
                  icon: Icon(Icons.keyboard_arrow_down_outlined),
                  iconSize: 24,
                  elevation: 16,

                  style: TextStyle(color:HexColor("#2E384D"),
                      fontSize: 15,
                      fontWeight: FontWeight.w400
                  ),
                  underline: Container(
                      height: 0
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue1 = newValue;
                    });
                  },
                  items: <String>['DAY', 'Kusile', 'OPG', 'CLS', 'IOC', 'FOK']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),

            ),
        ],)
      ],)
      
    );
  }
}