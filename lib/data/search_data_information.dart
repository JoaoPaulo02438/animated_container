import 'dart:math';

import 'package:flutter/material.dart';

class MyDataInformation extends DataTableSource {
  // Generate some made-up data
  List<Map> information = [
    {
      'id': 100,
      'initialDate': '03/08/2022',
      'finalDate': '03/08/2022',
      'group': 'Cargo Promotor',
      'dataBase': '',
      'microregion': '',
      'user': 'Antônio'
    },
    {
      'id': 101,
      'initialDate': '03/08/2022',
      'finalDate': '03/08/2022',
      'group': 'Administração',
      'dataBase': '',
      'microregion': '',
      'user': 'Maria'
    },
    {
      'id': 102,
      'initialDate': '03/08/2022',
      'finalDate': '03/08/2022',
      'group': 'Marketing',
      'dataBase': '',
      'microregion': '',
      'user': 'Francisco'
    },
    {
      'id': 103,
      'initialDate': '03/08/2022',
      'finalDate': '03/08/2022',
      'group': 'Marketing',
      'dataBase': '',
      'microregion': '',
      'user': 'Francisco'
    },
    {
      'id': 104,
      'initialDate': '03/08/2022',
      'finalDate': '03/08/2022',
      'group': 'Marketing',
      'dataBase': '',
      'microregion': '',
      'user': 'Francisco'
    },
    {
      'id': 105,
      'initialDate': '03/08/2022',
      'finalDate': '03/08/2022',
      'group': 'Marketing',
      'dataBase': '',
      'microregion': '',
      'user': 'Maria'
    },
    {
      'id': 106,
      'initialDate': '03/08/2022',
      'finalDate': '03/08/2022',
      'group': 'Marketing',
      'dataBase': '',
      'microregion': '',
      'user': 'Antônio'
    },
  ];

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => information.length;
  @override
  int get selectedRowCount => 0;
  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(
        Text(
          information[index]['id'].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      DataCell(
        Text(
          information[index]["initialDate"].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      DataCell(
        Text(
          information[index]["finalDate"].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      DataCell(
        Text(
          information[index]["group"].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      DataCell(
        Text(
          information[index]["dataBase"].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      DataCell(
        Text(
          information[index]["microregion"].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      DataCell(
        Text(
          information[index]["user"].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    ]);
  }
}
