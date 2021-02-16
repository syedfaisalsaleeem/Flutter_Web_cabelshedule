import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class TopBarMain extends StatefulWidget {
  @override
  _TopBarMainState createState() => _TopBarMainState();
}

class _TopBarMainState extends State<TopBarMain> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor("#2227BE"),
      height: 90,
      child:Row(
        children: [
          Expanded(flex:7,
          child: Container(
            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
            height: 60,
            color:HexColor("#2227BE"),
            child:Row(
              children: [
                InkWell(
                  onTap: (){},
                    child: Container(
                    padding:EdgeInsets.fromLTRB(10, 2, 10, 2),
                    child:Text("Projects", style:TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.normal,decoration: TextDecoration.none))
                  ),
                ),
                Expanded(child: Container(),flex:1),
                InkWell(
                    onTap: (){},
                    child: Container(
                    padding:EdgeInsets.fromLTRB(10, 2, 10, 2),
                    child:Text("Staff", style:TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.normal,decoration: TextDecoration.none))
                  ),
                ),
                Expanded(child: Container(),flex:1),
                InkWell(
                    onTap: (){},
                    child: Container(
                    padding:EdgeInsets.fromLTRB(10, 2, 10, 2),
                    child:Text("Stock Control", style:TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.normal,decoration: TextDecoration.none))
                  ),
                ),
                Expanded(child: Container(),flex:1),
                InkWell(
                    onTap: (){},
                    child: Container(
                    padding:EdgeInsets.fromLTRB(10, 2, 10, 2),
                    child:Text("Cable Drums", style:TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.normal,decoration: TextDecoration.none))
                  ),
                ),
                Expanded(child: Container(),flex:1),
                InkWell(
                  onTap: (){},
                   child: Container(
                    padding:EdgeInsets.fromLTRB(10, 2, 10, 2),
                    child:Text("Cable Process", style:TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.normal,decoration: TextDecoration.none))
                  ),
                ),
                Expanded(child: Container(),flex:1),
                InkWell(
                    onTap: (){},
                    child: Container(
                    padding:EdgeInsets.fromLTRB(10, 2, 10, 2),
                    child:Text("Site Administration", style:TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.normal,decoration: TextDecoration.none))
                  ),
                ),
                Expanded(child: Container(),flex:1),
                InkWell(
                    onTap: (){},
                    child: Container(
                    padding:EdgeInsets.fromLTRB(10, 2, 10, 2),
                    child:Text("CMS Administration", style:TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.normal,decoration: TextDecoration.none))
                  ),
                ),
                Expanded(child: Container(),flex:1),
                InkWell(
                  onTap: (){},
                    child: Container(
                    padding:EdgeInsets.fromLTRB(10, 2, 10, 2),
                    child:Text("Help", style:TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.normal,decoration: TextDecoration.none))
                  ),
                ),
                Expanded(child: Container(),flex:6),
            ],)
          ),),
          Expanded(
            child: Container(
              padding:EdgeInsets.fromLTRB(40, 2, 40, 2),
            child: Container(
              color:HexColor("F5053F"),
              child: IconButton(color:Colors.white,icon: Icon(Icons.power_settings_new),onPressed: (){},)),
          ),)
        ],
      )
    );
  }
}