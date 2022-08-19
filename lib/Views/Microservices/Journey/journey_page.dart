import 'package:animated_container/Components/Home/container/mainContainer.dart';
import 'package:animated_container/Components/Home/container/retractContainer.dart';
import 'package:animated_container/Components/home/upper/upper_home.dart';
import 'package:animated_container/data/journey_data.dart';
import 'package:animated_container/widgets/widget_pagina_desenvolvimento.dart';
import 'package:flutter/material.dart';

class JourneyPage extends StatefulWidget {
  const JourneyPage({Key? key}) : super(key: key);

  @override
  State<JourneyPage> createState() => _JourneyPageState();
}

class _JourneyPageState extends State<JourneyPage> {
  final DataTableSource journey = MyDataJourney();

  // define a list of options for the dropdown
  final List<String> _filter = [
    "Id",
    "Usuario",
    "Data",
    "Inicio da Jornada",
    "Intervalo",
    "Fim da Jornada"
  ];
  final List<String> _order = [
    "Id",
    "Usuario",
    "Data",
    "Inicio da Jornada",
    "Intervalo",
    "Fim da Jornada"
  ];

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
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UpperHome(),
                ],
              ),
              SizedBox(height: 50),
              Container(
                padding: EdgeInsets.only(top: 8),
                decoration: BoxDecoration(
                  color: Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1.0, color: Colors.grey),
                ),
                child: Wrap(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      width: MediaQuery.of(context).size.width * .20,
                      height: MediaQuery.of(context).size.height * .05,
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
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                    Material(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(5),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaginaDesenvolvimento(),
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
                                'Exportar',
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
                      height: MediaQuery.of(context).size.height * .05,
                      child: Center(
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
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .11,
                      height: MediaQuery.of(context).size.height * .05,
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
                      height: MediaQuery.of(context).size.height * .05,
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 100,
                        height: MediaQuery.of(context).size.height * .60,
                        child: ListView(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onDoubleTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        PaginaDesenvolvimento(),
                                  ),
                                );
                              },
                              child: PaginatedDataTable(
                                source: journey,
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
                                    'Usuário',
                                    style: TextStyle(color: Colors.grey),
                                  )),
                                  DataColumn(
                                      label: Text(
                                    'Data',
                                    style: TextStyle(color: Colors.grey),
                                  )),
                                  DataColumn(
                                    label: Text(
                                      'Inicio da Jornada',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  DataColumn(
                                    label: Text(
                                      'Intervalo',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  DataColumn(
                                      label: Text(
                                    'Fim da Jornada',
                                    style: TextStyle(color: Colors.grey),
                                  )),
                                ],
                                dataRowHeight: 50,
                                arrowHeadColor: Colors.red,
                                columnSpacing: 50,
                                horizontalMargin: 5,
                                rowsPerPage: 6,
                                showCheckboxColumn: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    )));
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
              child: MainContainer()),
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
                child: RetractContainer()),
          ),
        ),
      ),
    );
  }
}
