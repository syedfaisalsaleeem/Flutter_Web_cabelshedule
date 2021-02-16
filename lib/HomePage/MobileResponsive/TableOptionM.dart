import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TableOptionM extends StatefulWidget {
  @override
  _TableOptionMState createState() => _TableOptionMState();
}

class _TableOptionMState extends State<TableOptionM> {
  bool rememberMe = false;
  bool rememberMe1 = false;
   void _onRememberMeChanged(bool newValue) => setState(() {
    rememberMe = newValue;

    if (rememberMe) {
      // TODO: Here goes your functionality that remembers the user.
    } else {
      // TODO: Forget the user
    }
  });

   void _onRememberMeChanged1(bool newValue) => setState(() {
    rememberMe1 = newValue;

    if (rememberMe) {
      // TODO: Here goes your functionality that remembers the user.
    } else {
      // TODO: Forget the user
    }
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child:Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center ,
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
                    Container(
                      width: (20),
                      height:(30),
                      color:Colors.grey,
                      child: IconButton(color:Colors.black,padding:EdgeInsets.all(0.0),
                        onPressed: ()=>{}, icon: Icon(Icons.arrow_left,size: 19,)),
                    ),
                    SizedBox(width:5),
                    Container(
                      width: (20),
                      height:(30),
                      color:Colors.grey,child: IconButton(color:Colors.black,onPressed: ()=>{}, padding: EdgeInsets.all(0), icon: Icon(Icons.arrow_right,size: 19))),
                    SizedBox(width:5),
                    Text("1/8",style:TextStyle(fontSize: 12)),
                    SizedBox(width:10),
         
                ],),
            
              SizedBox(height:10),
              Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center ,
                children: [
                  TextButton( 
                    style: ElevatedButton.styleFrom(
                    primary: Colors.grey[200], // background
                    onPrimary: Colors.black, // foreground
                  ),
                  onPressed: ()=>{},child:Text("Fields",style: TextStyle(fontSize: 12),)),
                  SizedBox(width:5),
                  TextButton(                    
                    style: ElevatedButton.styleFrom(
                    primary: Colors.grey[200], // background
                    onPrimary: Colors.black, // foreground
                  ),onPressed: ()=>{},child:Text("Update",style: TextStyle(fontSize: 12))),
                  SizedBox(width:5),
                  TextButton(                    
                    style: ElevatedButton.styleFrom(
                    primary: Colors.grey[200], // background
                    onPrimary: Colors.black, // foreground
                  ),onPressed: ()=>{},child:Text("Deactivate",style: TextStyle(fontSize: 12))),
                  SizedBox(width:5),
                  TextButton(                    
                    style: ElevatedButton.styleFrom(
                    primary: Colors.grey[200], // background
                    onPrimary: Colors.black, // foreground
                  ),onPressed: ()=>{},child:Text("Reactivate",style: TextStyle(fontSize: 12))),
                  SizedBox(width:5),
                  TextButton(                    
                    style: ElevatedButton.styleFrom(
                    primary: Colors.grey[200], // background
                    onPrimary: Colors.black, // foreground
                  ),onPressed: ()=>{},child:Text("Delete",style: TextStyle(fontSize: 12))),
                  SizedBox(width:0),
              ],),
              SizedBox(height:20),
              Wrap(
                             crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center ,
                children: [

                  Transform.scale(scale: 0.7,child: Checkbox(value: rememberMe,onChanged:_onRememberMeChanged)),
                  Text("Non-active",style: TextStyle(fontSize: 11),),
                  SizedBox(width:5),
                  TextButton(                   
                     style: ElevatedButton.styleFrom(
                    primary: Colors.grey[200], // background
                    onPrimary: Colors.black, // foreground
                  ),onPressed: ()=>{},child:Text("CSV Export",style: TextStyle(fontSize: 12))),
                  SizedBox(width:5),
                  TextButton(                    
                    style: ElevatedButton.styleFrom(
                    primary: Colors.grey[200], // background
                    onPrimary: Colors.black, // foreground
                  ),onPressed: ()=>{},child:Text("PDF Export",style: TextStyle(fontSize: 12))),
                  Transform.scale(scale: 0.7,child: Checkbox(value: rememberMe1,onChanged:_onRememberMeChanged1)),
                  Text("Non Selected",style: TextStyle(fontSize: 11),), 
              ],),
              SizedBox(height:10),
          ],
        ),
      )
    );
  }
}