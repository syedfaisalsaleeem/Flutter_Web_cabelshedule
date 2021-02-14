import 'package:flutter/material.dart';

class StatusMessageContainer extends StatelessWidget {
  int maxLines = 6;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child:Row(children: [
        SizedBox(width:10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height:20),
          Container(width: 130,child: RaisedButton(onPressed: (){}, child:Text("Clear"))),
          SizedBox(height:10),
          Container(width: 130,child: RaisedButton(onPressed: (){}, child:Text("Email to admin"))),
          SizedBox(height:20),
        ],),
        SizedBox(width:20),
        Expanded(
                  child: Container(

                child:Padding(
                padding: EdgeInsets.fromLTRB(0,10,10,10),
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
                      hintText: '21:6:5-> Listing of shedule list successfull',
                      hintStyle: TextStyle(color: Colors.green)

                  ),
                )
                )
                ),
        ),
      ],)
    );
  }
}