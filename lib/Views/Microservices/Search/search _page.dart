import 'package:animated_container/Components/home/menu/gestureRec.dart';
import 'package:animated_container/Components/home/upper/upper_home.dart';
import 'package:animated_container/Views/Microservices/Search/search_new.dart';


import 'package:animated_container/components/home/menu/gesturePri.dart';
import 'package:animated_container/data/search_data.dart';
import 'package:animated_container/widgets/widget_pagina_desenvolvimento.dart';
import 'package:flutter/material.dart';

import 'search_information.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final DataTableSource data = MyData();

  // define a list of options for the dropdown
  final List<String> _filter = ["Id", "Titulo", "Criação", "Status"];
  final List<String> _order = ['Ativa', 'Finalizada', 'Pausada', 'Pendente'];

  // the selected value
  String? _selectedFilter;
  String? _selectedOrder;

  bool select = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            select ? GesturePrincipal() : GestureRecolhido(),
            AnimatedContainer(
              duration: Duration(seconds: 1),
              height: MediaQuery.of(context).size.height / 0.9,
              width: MediaQuery.of(context).size.height / 0.8,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UpperHome(),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Material(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SearchNew(),
                              ),
                            );
                          },
                          splashColor: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                          child: Flexible(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * .10,
                              height: MediaQuery.of(context).size.height * .05,
                              child: Center(
                                child: Text(
                                  '+ Nova Pesquisa',
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF), fontSize: 14),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .10,
                        height: MediaQuery.of(context).size.height * .09,
                        child: TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.help_outline,
                            color: Colors.grey,
                          ),
                          label: Text(
                            'Ajuda',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .21,
                        height: MediaQuery.of(context).size.height * .09,
                        color: Color(0xffFFFFFF),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * .22,
                          height: MediaQuery.of(context).size.height * .09,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            height: 40,
                            width: 250,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Pesquisar',
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  hintStyle: TextStyle(color: Colors.grey),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 20.0, vertical: 20.0),
                                  suffixIcon: Icon(
                                    Icons.search,
                                    size: 12.0,
                                    color: Colors.grey,
                                  )),
                              textAlign: TextAlign.left,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .11,
                        height: MediaQuery.of(context).size.height * .09,
                        color: Color(0xffFFFFFF),
                        child: DropdownButton<String>(
                          value: _selectedFilter,
                          onChanged: (value) {
                            setState(() {
                              _selectedFilter = value;
                            });
                          },
                          hint: Text(
                            'Filtrar por',
                            style: TextStyle(color: Colors.grey),
                          ),
                          // Hide the default underline
                          underline: Container(),
                          // set the color of the dropdown menu
                          dropdownColor: Color(0xffFFFFFF),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                          ),
                          isExpanded: true,

                          // The list of options
                          items: _filter
                              .map((e) => DropdownMenuItem(
                                    value: e,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        e,
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .11,
                        height: MediaQuery.of(context).size.height * .09,
                        color: Color(0xffFFFFFF),
                        child: DropdownButton<String>(
                          value: _selectedOrder,
                          onChanged: (value) {
                            setState(() {
                              _selectedOrder = value;
                            });
                          },
                          hint: Text(
                            'Ordenar por',
                            style: TextStyle(color: Colors.grey),
                          ),
                          // Hide the default underline
                          underline: Container(),
                          // set the color of the dropdown menu
                          dropdownColor: Color(0xffFFFFFF),
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.grey,
                          ),
                          isExpanded: true,

                          // The list of options
                          items: _order
                              .map((e) => DropdownMenuItem(
                                    value: e,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        e,
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 100,
                      height: MediaQuery.of(context).size.height * .60,
                      child: ListView(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.grey[300],
                            child: InkWell(
                              onDoubleTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SearchInformation(),
                                  ),
                                );
                              },
                              child: PaginatedDataTable(
                                source: data,
                                //header: const Text('Pesquisas'),
                                columns: [
                                  DataColumn(
                                    label: Text(
                                      'ID',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                  DataColumn(
                                      label: Text(
                                    'Titulo',
                                    style: TextStyle(color: Colors.grey),
                                  )),
                                  DataColumn(
                                      label: Text(
                                    'Data Criação',
                                    style: TextStyle(color: Colors.grey),
                                  )),
                                  DataColumn(
                                      label: Text(
                                    'Status',
                                    style: TextStyle(color: Colors.grey),
                                  )),
                                ],
                                dataRowHeight: 70,
                                arrowHeadColor: Colors.red,
                                columnSpacing: 100,
                                horizontalMargin: 10,
                                rowsPerPage: 5,
                                showCheckboxColumn: false,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget GesturePrincipal() {
    return Flexible(
      child: InkWell(
        onTap: () {
          setState(() {
            select = !select;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedContainer(
              decoration: BoxDecoration(
                  color: const Color(0xffD52B1E),
                  borderRadius: BorderRadius.circular(20)),
              alignment: Alignment.topCenter,
              duration: Duration(milliseconds: 1),
              height: MediaQuery.of(context).size.height / 0.9,
              width: MediaQuery.of(context).size.height / 2.5,
              child: GesturePri()),
        ),
      ),
    );
  }

  Widget GestureRecolhido() {
    return Flexible(
      child: InkWell(
        onTap: () {
          setState(() {
            select = !select;
          });
        },
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedContainer(
                decoration: BoxDecoration(
                    color: const Color(0xffD52B1E),
                    borderRadius: BorderRadius.circular(20)),
                alignment: Alignment.topLeft,
                duration: Duration(milliseconds: 1),
                height: MediaQuery.of(context).size.height / 0.5,
                width: MediaQuery.of(context).size.height / 9,
                child: GestureRec()),
          ),
        ),
      ),
    );
  }
}
