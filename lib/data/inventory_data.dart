import 'package:flutter/material.dart';

class MyDataInventory extends DataTableSource {
  // Generate some made-up data
  List<Map> inventory = [
    {
      'id': 20221,
      'data': '01/07/2022 18:00',
      'documento': 'NF 9500',
      'situação': 'processado',
    },
    {
      'id': 20222,
      'data': '01/08/2022 16:00',
      'documento': 'NF 9501',
      'situação': 'processado',
    },
    {
      'id': 20223,
      'data': '06/07/2022 13:00',
      'documento': 'NF 9400',
      'situação': 'pendente',
    },
    {
      'id': 20224,
      'data': '06/07/2022 13:00',
      'documento': 'NF 9400',
      'situação': 'pendente',
    },
    {
      'id': 20225,
      'data': '06/07/2022 13:00',
      'documento': 'NF 9400',
      'situação': 'pendente',
    },
    {
      'id': 20226,
      'data': '01/07/2022 18:00',
      'documento': 'NF 9500',
      'situação': 'processado',
    },
    {
      'id': 20227,
      'data': '01/08/2022 16:00',
      'documento': 'NF 9501',
      'situação': 'processado',
    },
    {
      'id': 20228,
      'data': '06/07/2022 13:00',
      'documento': 'NF 9400',
      'situação': 'pendente',
    },
    {
      'id': 20229,
      'data': '06/07/2022 13:00',
      'documento': 'NF 9400',
      'situação': 'pendente',
    },
    {
      'id': 20230,
      'data': '06/07/2022 13:00',
      'documento': 'NF 9400',
      'situação': 'pendente',
    },
  ];

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => inventory.length;
  @override
  int get selectedRowCount => 0;
  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(
        Text(
          inventory[index]['id'].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      DataCell(
        Text(
          inventory[index]["data"].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      DataCell(
        Text(
          inventory[index]["documento"].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      DataCell(
        Text(
          inventory[index]["situação"].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    ]);
  }
}
