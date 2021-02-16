import 'package:flutter/material.dart';

class showTable extends StatelessWidget {
  List tempList = [
    {"dataField":"drum_id","headerText":"Drum id","colWidth":60,"fieldOrder":1,"visible":false},
    {"dataField":"bin_id","headerText":"Bin id","colWidth":60,"fieldOrder":2,"visible":false},
    {"dataField":"site_id","headerText":"Site id","colWidth":60,"fieldOrder":3,"visible":false},
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*1,
      height: 430,
      child:Table(
        border: TableBorder.all(),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        defaultColumnWidth:FixedColumnWidth(tempList[0]["colWidth"]) ,
 
        children: [
          TableRow(children:(tempList).map(
            (item)=>Container(alignment: Alignment.center,width:item["colWidth"],child: Text(item["headerText"].toString()))
          ).toList()
          )
      ],)

    );
  }
}