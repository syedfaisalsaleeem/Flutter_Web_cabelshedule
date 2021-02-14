import 'package:flutter/material.dart';

import 'showTable.dart';
class TableContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(children: [

        showTable()
      ],)
    );
  }
}