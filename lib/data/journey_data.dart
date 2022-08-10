import 'dart:math';

import 'package:flutter/material.dart';

class MyDataJourney extends DataTableSource {
  // Generate some made-up data
  List<Map> journey = [
    {
      'id': 100,
      'user': 'Antônio',
      'date': '03/08/2022',
      'initialJourney': '08:50:53',
      'interval': '12:10:35 - 13:15:06',
      'finalJourney': '16:05:55',
    },
    {
      'id': 101,
      'user': 'Maria',
      'date': '03/08/2022',
      'initialJourney': '08:50:53',
      'interval': '12:10:35 - 13:15:06',
      'finalJourney': '18:05:55',
    },
    {
      'id': 102,
      'user': 'Francisco',
      'date': '03/08/2022',
      'initialJourney': '08:50:53',
      'interval': '12:10:35 - 13:15:06',
      'finalJourney': '17:05:55',
    },
    {
      'id': 103,
      'user': 'Antônio',
      'date': '04/08/2022',
      'initialJourney': '08:50:53',
      'interval': '12:10:35 - 13:15:06',
      'finalJourney': '16:05:55',
    },
    {
      'id': 104,
      'user': 'Maria',
      'date': '04/08/2022',
      'initialJourney': '08:50:53',
      'interval': '12:10:35 - 13:15:06',
      'finalJourney': '16:05:55',
    },
    {
      'id': 105,
      'user': 'Francisco',
      'date': '04/08/2022',
      'initialJourney': '08:50:53',
      'interval': '12:10:35 - 13:15:06',
      'finalJourney': '16:05:55',
    },
    {
      'id': 106,
      'user': 'Francisco',
      'date': '04/08/2022',
      'initialJourney': '08:50:53',
      'interval': '12:10:35 - 13:15:06',
      'finalJourney': '16:05:55',
    },
    {
      'id': 107,
      'user': 'Francisco',
      'date': '04/08/2022',
      'initialJourney': '08:50:53',
      'interval': '12:10:35 - 13:15:06',
      'finalJourney': '16:05:55',
    },
    {
      'id': 108,
      'user': 'Francisco',
      'date': '04/08/2022',
      'initialJourney': '08:50:53',
      'interval': '12:10:35 - 13:15:06',
      'finalJourney': '16:05:55',
    },
  ];

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => journey.length;
  @override
  int get selectedRowCount => 0;
  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(
        Text(
          journey[index]['id'].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      DataCell(
        Text(
          journey[index]["user"].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      DataCell(
        Text(
          journey[index]["date"].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      DataCell(
        Text(
          journey[index]["initialJourney"].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      DataCell(
        Text(
          journey[index]["interval"].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      DataCell(
        Text(
          journey[index]["finalJourney"].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    ]);
  }
}
