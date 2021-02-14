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
      child:DataTable(
        headingRowHeight: 40,
        sortAscending: true,
        sortColumnIndex: 2,
        dividerThickness: 1.2,
        dataRowColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    if (states.contains(MaterialState.selected))
      return Colors.white;
    return Colors.white;  // Use the default value.
  }) ,
columnSpacing: 25,
        showBottomBorder: true,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey,)
        ),
        columns: [
          DataColumn(label: Text("Data Field",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),)
          ),
                    DataColumn(label: Text("Header Text",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600))
          ),
                    DataColumn(label: Text("ColWidth",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600))
          ),
                    DataColumn(label: Text("Fieldorder",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600))
          ),
                    DataColumn(label: Text("Visible",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600))
          ),
        ],
        rows:(tempList).map(
          (item)=>
            DataRow(cells: [
              DataCell(Text(item["dataField"].toString())),
              DataCell(Text(item["headerText"].toString())),
              DataCell(Text(item["colWidth"].toString())),
              DataCell(Text(item["fieldOrder"].toString())),
              DataCell(Text(item["visible"].toString())),
            ])
          
        ).toList() ,
      )
    );
  }
}