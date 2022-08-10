import 'dart:math';

import 'package:flutter/material.dart';

class MyData extends DataTableSource {
  // Generate some made-up data
  List<Map> data = [
    {
      'id': 100,
      'title': 'Pesquisa de Satisfação',
      'dateCreated': '03/08/2022',
      'status': 'Ativa'
    },
    {
      'id': 102,
      'title': 'Teste de Qualidade',
      'dateCreated': '03/08/2022',
      'status': 'Ativa'
    },
    {
      'id': 103,
      'title': 'Pesquisa de capilaridade',
      'dateCreated': '03/08/2022',
      'status': 'Pendente'
    },
    {
      'id': 104,
      'title': 'Apuração de Estoque',
      'dateCreated': '03/08/2022',
      'status': 'Pendente'
    },
    {
      'id': 105,
      'title': 'Teste de Vendas',
      'dateCreated': '03/08/2022',
      'status': 'Finalizada'
    },
    {
      'id': 106,
      'title': 'Cadastro de PDV',
      'dateCreated': '03/08/2022',
      'status': 'Finalizada'
    },
    {
      'id': 107,
      'title': 'Cadastro de Agentes',
      'dateCreated': '03/08/2022',
      'status': 'Finalizada'
    },
    {
      'id': 91,
      'title': 'Pesquisa de Satisfação',
      'dateCreated': '03/07/2022',
      'status': 'Ativa'
    },
    {
      'id': 92,
      'title': 'Teste de Qualidade',
      'dateCreated': '03/07/2022',
      'status': 'Ativa'
    },
    {
      'id': 93,
      'title': 'Pesquisa de capilaridade',
      'dateCreated': '03/07/2022',
      'status': 'Pendente'
    },
    {
      'id': 94,
      'title': 'Apuração de Estoque',
      'dateCreated': '03/07/2022',
      'status': 'Pendente'
    },
    {
      'id': 95,
      'title': 'Teste de Vendas',
      'dateCreated': '03/07/2022',
      'status': 'Finalizada'
    },
    {
      'id': 96,
      'title': 'Cadastro de PDV',
      'dateCreated': '03/07/2022',
      'status': 'Finalizada'
    },
    {
      'id': 97,
      'title': 'Cadastro de Agentes',
      'dateCreated': '03/07/2022',
      'status': 'Finalizada'
    },
    {
      'id': 81,
      'title': 'Pesquisa de Satisfação',
      'dateCreated': '03/05/2022',
      'status': 'Ativa'
    },
    {
      'id': 82,
      'title': 'Teste de Qualidade',
      'dateCreated': '03/06/2022',
      'status': 'Ativa'
    },
    {
      'id': 83,
      'title': 'Pesquisa de capilaridade',
      'dateCreated': '03/06/2022',
      'status': 'Pendente'
    },
    {
      'id': 84,
      'title': 'Apuração de Estoque',
      'dateCreated': '03/06/2022',
      'status': 'Pendente'
    },
    {
      'id': 85,
      'title': 'Teste de Vendas',
      'dateCreated': '03/06/2022',
      'status': 'Finalizada'
    },
    {
      'id': 86,
      'title': 'Cadastro de PDV',
      'dateCreated': '03/06/2022',
      'status': 'Finalizada'
    },
    {
      'id': 87,
      'title': 'Cadastro de Agentes',
      'dateCreated': '03/07/2022',
      'status': 'Finalizada'
    },
  ];

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => data.length;
  @override
  int get selectedRowCount => 0;
  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(
        Text(
          data[index]['id'].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      DataCell(
        Text(
          data[index]["title"].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      DataCell(
        Text(
          data[index]["dateCreated"].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      DataCell(
        Text(
          data[index]["status"].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    ]);
  }
}
