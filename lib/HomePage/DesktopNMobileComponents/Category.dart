import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
    String dropdownValue1 = 'Kusile';
    String dropdownValue2 = 'Kusile Construction';
    String dropdownValue3 = 'UNIT 4 C&I';

  int maxLines = 5;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child:Column(children: [
                    Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              SizedBox(width:30),
              Text("For Site"),
              SizedBox(width:55),
              Text("Select Site"),
              SizedBox(width:10),
              Container(
                    padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                    height: 35,
                    width:150,
                    decoration: ShapeDecoration(
                      color: Color.fromRGBO(239, 239, 239, 0.2),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.0, style: BorderStyle.solid, color: Color.fromRGBO(18, 18, 20, 0.1)),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                child: DropdownButton<String>(
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
              SizedBox(width:70),
            ],),
            SizedBox(height:10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:30),
                Text("Main Project"),
                SizedBox(width:20),
                Container(
                    padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                    height: 35,
                    width:243,
                    decoration: ShapeDecoration(
                      color: Color.fromRGBO(239, 239, 239, 0.2),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.0, style: BorderStyle.solid, color: Color.fromRGBO(18, 18, 20, 0.1)),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                child: DropdownButton<String>(
                        value: dropdownValue2,
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
                        items: <String>['DAY', 'Kusile Construction', 'OPG', 'CLS', 'IOC', 'FOK']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
              ),
              SizedBox(width:10),
              InkWell(

                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  print("1");
                },

                child: Container(
                  width:25,
                  height:25,
                  decoration: BoxDecoration(
                      color: HexColor("#EFEFF4"),
                      shape: BoxShape.circle
                  ),
                  child: Icon(
                      Icons.add,
                      size:15
                  ),
                ),
              ),
              SizedBox(width:10),
              InkWell(

                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  print("1");
                },

                child: Container(
                  width:25,
                  height:25,
                  decoration: BoxDecoration(
                      color: HexColor("#EFEFF4"),
                      shape: BoxShape.circle
                  ),
                  child: Icon(
                      Icons.refresh,
                      size:15
                  ),
                ),
              ),
            ],),
            SizedBox(height:10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width:30),
                Text("Sub Project"),
                SizedBox(width:27),
                Container(
                    padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
                    height: 35,
                    width:243,
                    decoration: ShapeDecoration(
                      color: Color.fromRGBO(239, 239, 239, 0.2),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.0, style: BorderStyle.solid, color: Color.fromRGBO(18, 18, 20, 0.1)),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                child: DropdownButton<String>(
                        value: dropdownValue3,
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
                        items: <String>['DAY', 'UNIT 4 C&I', 'OPG', 'CLS', 'IOC', 'FOK']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
              ),
              SizedBox(width:10),
              InkWell(

                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  print("1");
                },

                child: Container(
                  width:25,
                  height:25,
                  decoration: BoxDecoration(
                      color: HexColor("#EFEFF4"),
                      shape: BoxShape.circle
                  ),
                  child: Icon(
                      Icons.add,
                      size:15
                  ),
                ),
              ),
              SizedBox(width:10),
              InkWell(

                borderRadius: BorderRadius.circular(15),
                onTap: () {
                  print("1");
                },

                child: Container(
                  width:25,
                  height:25,
                  decoration: BoxDecoration(
                      color: HexColor("#EFEFF4"),
                      shape: BoxShape.circle
                  ),
                  child: Icon(
                      Icons.refresh,
                      size:15
                  ),
                ),
              ),
            ],),
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width:30),
              Text("Shedule Name"),
              SizedBox(width:13),
              Container(
                  margin: EdgeInsets.only(top:10),
                  width:240,
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
                        hintText: '',
                        hintStyle: TextStyle(fontSize: 15,color: HexColor("#7B788A") )
                    ),
                  ),),
          ],),
          Row(children: [
            SizedBox(width:30),
            Text("Description"),
            Container(
              width:300,
              child:Padding(
              padding: EdgeInsets.fromLTRB(20,10,20,0),
              child:TextField(
                maxLines:maxLines,
                onChanged: (val){
                  // setState(() {
                  //   summary=val;
                  // });
                  //
                },
                // maxLines: null,
                // expands: true,
                style:TextStyle(
                  fontSize: 14,
                  // fontWeight: FontWeight.w00,
                ),
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  border:OutlineInputBorder() ,
                    hintText: '',

                ),
              )
              )
              ),
          ],),
          SizedBox(height:10),
          Row(children: [
            SizedBox(width: 30,),
            Text("Latest Version"),
            SizedBox(width: 10,),
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
            SizedBox(width: 10,),
            Text("Revision Count"),
            SizedBox(width: 10,),
            Container(
                  margin: EdgeInsets.only(top:10),
                  width:80,
                  height: 40,
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child:TextField(
                    keyboardType: TextInputType.text,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15,color: HexColor("#7B788A"),decoration: TextDecoration.none ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left:10),
                        border: OutlineInputBorder(),
                        hintText: 'null',
                        hintStyle: TextStyle(fontSize: 15,color: HexColor("#7B788A") )
                    ),
                  ),),
          ],),
          SizedBox(height:10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(onPressed: (){},child:Text("Submit",style: TextStyle(color:Colors.white),),color: HexColor("#2B31C9"),),
              SizedBox(width: 10,),
              RaisedButton(onPressed: (){},child:Text("Clear",style: TextStyle(color:Colors.white)),color: HexColor("#2B31C9")),
          ],)
          ],)
        ),
      ],
    );
  }
}