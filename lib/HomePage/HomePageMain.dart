import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:myqpp/HomePage/MobileResponsive/ButtonsRowM.dart';



import 'DesktopNMobileComponents/AddCategory.dart';
import 'DesktopNMobileComponents/CabelSheduleList.dart';
import 'DesktopNMobileComponents/DeactivateCategory.dart';
import 'DesktopNMobileComponents/ListShedules.dart';
import 'DesktopNMobileComponents/StatusMessageContainer.dart';
import 'DesktopNMobileComponents/TableContainer.dart';
import 'DesktopNMobileComponents/UpdateCategory.dart';
import 'DesktopResponsive/ButtonsRowD.dart';
import 'DesktopResponsive/TableOptionD.dart';
import 'DesktopResponsive/TopBar/TopBarMain.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'MobileResponsive/TableOptionM.dart';
class HomePageMain extends StatefulWidget {
  @override
  _HomePageMainState createState() => _HomePageMainState();
}

class _HomePageMainState extends State<HomePageMain> {
  int currentindex ;
  listb(){
      setState(() {
      currentindex = 0;
    });
  }
  add(){
    setState(() {
      currentindex = 1;
    });
  }
  update(){
    setState(() {
      currentindex = 2;
    });
  }
  deactivate(){
    setState(() {
      currentindex = 3;
    });
  }
  reactivate(){
    setState(() {
      currentindex = 4;
    });
  }
  permanentlydelete(){
    setState(() {
      currentindex = 5;
    });
  }
  @override
  Widget build(BuildContext context) {
    print("build again");
    Size size = MediaQuery.of(context).size;
    return Scaffold(
    drawer:Drawer(

            child: ListView(
    // Important: Remove any padding from the ListView.
    padding: EdgeInsets.zero,
    children: <Widget>[
        ListTile(
        title: Text('Projects'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title: Text('Staff'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title: Text('Stock Control'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title: Text('Cable Drums'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title: Text('Cable Process'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title: Text('Site Administration'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title: Text('CMS Administration'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
      ListTile(
        title: Text('Help'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
    ],
  ),), 
            body: Stack(
              children: [
                Container(
                          child: Scrollbar(
                            isAlwaysShown: true,
                            hoverThickness: 15,
                            
        child: ListView(
          children:[Container(
                child: Column(
                children: [
                  ScreenTypeLayout(
                    mobile:Container(
                      child:Builder(builder:(BuildContext context){
                        return Container(
                          width: size.width*1,
                          color:HexColor("#2227BE"),
                          height:50,
                          child: Row(
                            children: [
                              FlatButton(color:HexColor("#2227BE"),onPressed: () => Scaffold.of(context).openDrawer(),child: Icon(Icons.menu,color: Colors.white,)),
                              Expanded(child: Container(),flex:1),
                              Container(color:HexColor("F5053F"),child: IconButton(color:Colors.white,icon: Icon(Icons.power_settings_new),onPressed: (){},)),
                              SizedBox(width:30)
                            ],
                          ));})
                    ),
                    tablet:Container(
                      child:Builder(builder:(BuildContext context){
                        return Container(
                          width: size.width*1,
                          color:HexColor("#2227BE"),
                          height:50,
                          child: Row(
                            children: [
                              FlatButton(color:HexColor("#2227BE"),onPressed: () => Scaffold.of(context).openDrawer(),child: Icon(Icons.menu,color: Colors.white,)),
                              Expanded(child: Container(),flex:1),
                              Container(color:HexColor("F5053F"),child: IconButton(color:Colors.white,icon: Icon(Icons.power_settings_new),onPressed: (){},)),
                              SizedBox(width:30)
                            ],
                          ));})
                    ),
                    desktop:TopBarMain()
                  ),
                  SizedBox(height: 30,child:Container(color:Colors.white)),
                  Container(
                  margin:EdgeInsets.fromLTRB(20, 0, 20, 0),
                  // height:700,
                  decoration: BoxDecoration(
                    border:Border(
                      bottom: BorderSide(width: 1,color: Colors.black),
                      left: BorderSide(width: 1,color: Colors.black),
                      right: BorderSide(width: 1,color: Colors.black),)
                  ),
                  child:Column(
                    children: [
                      CabelSheduleList(),
                      SizedBox(height:10),
                      ScreenTypeLayout(
                        mobile:ButtonsRowM(currentindex:currentindex,add:add,update:update,deactivate:deactivate,reactivate:reactivate,listb:listb,permanentlydelete:permanentlydelete),
                        tablet: ButtonsRowM(currentindex:currentindex,add:add,update:update,deactivate:deactivate,reactivate:reactivate,listb:listb,permanentlydelete:permanentlydelete),
                        desktop: ButtonsRowD(currentindex:currentindex,add:add,update:update,deactivate:deactivate,reactivate:reactivate,listb:listb,permanentlydelete:permanentlydelete),
                      ),
                      SizedBox(height:10),
                      Divider(),
                      SizedBox(height:15),
                      Builder(
                        builder: (BuildContext context){
                          if(currentindex==0){
                            return Column(children: [
                          ListShedules(),
                          SizedBox(height:15),
                          TableContainer(),
                          ScreenTypeLayout(
                            mobile:TableOptionM(),
                            tablet:TableOptionM(),
                            desktop:TableOptionD()
                          )
                          ],);
                          }
                          if(currentindex==1){
                            return AddCategory();
                          }
                          else if(currentindex==2){
                            return UpdateCategory();
                          }   
                          else if(currentindex==3){
                            return DeactivateCategory(currentindex:currentindex,text:"Deactivate a category");
                          }
                          else if(currentindex==4){
                            return DeactivateCategory(currentindex:currentindex,text:"Reactivate a category");
                          }  
                          else if(currentindex==5){
                            return DeactivateCategory(currentindex:currentindex,text:"Permanently Delete a category");
                          }                       
                          return Container(
                            height:600,
                          );
                        },
                      ),

                      
                    ],)
                  ),
                  SizedBox(height:30),
                  Container(
                  margin:EdgeInsets.fromLTRB(20, 0, 20, 10),
                  width: size.width*1,
                  decoration: ShapeDecoration(color:HexColor("#F7F7F7"),shape: RoundedRectangleBorder(side:BorderSide(color:Colors.black ,width: 1.5,),borderRadius: BorderRadius.all(Radius.zero)),),
                  child:Column(children: [
                    Container(
                      margin: EdgeInsets.only(left: 10,top:10),
                      alignment: Alignment.centerLeft,
                      child:Text("Status Message",style:TextStyle(fontSize: 16,fontWeight: FontWeight.w500))
                    ),
                    StatusMessageContainer()
                    
                  ],)
                  )
                  
                  
                ],
              ),
          )]
        ),
                          ),
                        ),
            //             FlutterWebScroller(
            //   //Pass a reference to the ScrollCallBack function into the scrollbar
            //   scrollCallBack,

            //   //Add optional values
            //   scrollBarBackgroundColor: Colors.white,
            //   scrollBarWidth: 20.0,
            //   dragHandleColor: Colors.red,
            //   dragHandleBorderRadius: 2.0,
            //   dragHandleHeight: 100.0,
            //   dragHandleWidth: 15.0,
            // )
              ],

            ),
    );
  }
}