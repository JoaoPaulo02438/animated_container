import 'dart:math';

import 'package:flutter/material.dart';

class MyDataTasks extends DataTableSource {
  // Generate some made-up data
  List<Map> tasks = [
    {
      'id': 20221,
      'tarefa': 'Visita',
      'descricao': 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
      'delete': 'deletar',
    },
    {
      'id': 20222,
      'tarefa': 'Treinamento',
      'descricao': 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
      'delete': 'deletar',
    },
    {
      'id': 20223,
      'tarefa': 'Trocar máquina stone',
      'descricao': 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
      'delete': 'deletar',
    },
    {
      'id': 20224,
      'tarefa': 'Atualizar app',
      'descricao': 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
      'delete': 'deletar',
    },
    {
      'id': 20225,
      'tarefa': 'Preencher cadastro',
      'descricao': 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
      'delete': 'deletar',
    },
    {
      'id': 20226,
      'tarefa': 'Completar tutorial',
      'descricao': 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
      'delete': 'deletar',
    },
    {
      'id': 20227,
      'tarefa': 'Baixar app',
      'descricao': 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
      'delete': 'deletar',
    },
    {
      'id': 20228,
      'tarefa': 'Visita',
      'descricao': 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
      'delete': 'deletar',
    },
    {
      'id': 20229,
      'tarefa': 'Treinamento',
      'descricao': 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
      'delete': 'deletar',
    },
    {
      'id': 20230,
      'tarefa': 'Trocar máquina stone',
      'descricao': 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
      'delete': 'deletar',
    },
    {
      'id': 20231,
      'tarefa': 'Atualizar app',
      'descricao': 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
      'delete': 'deletar',
    },
    {
      'id': 20232,
      'tarefa': 'Preencher cadastro',
      'descricao': 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
      'delete': 'deletar',
    },
    {
      'id': 20233,
      'tarefa': 'Completar tutorial',
      'descricao': 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
      'delete': 'deletar',
    },
    {
      'id': 20234,
      'tarefa': 'Baixar app',
      'descricao': 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.',
      'delete': 'deletar',
    },
  ];

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => tasks.length;
  @override
  int get selectedRowCount => 0;
  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(
        Text(
          tasks[index]['id'].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      DataCell(
        Text(
          tasks[index]["tarefa"].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      DataCell(
        Text(
          tasks[index]["descricao"].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      DataCell(
        Text(
          tasks[index]["delete"].toString(),
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    ]);
  }
}
