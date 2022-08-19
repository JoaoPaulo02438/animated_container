import 'package:animated_container/Components/Home/container/mainContainer.dart';
import 'package:animated_container/Components/Home/container/retractContainer.dart';
import 'package:animated_container/Components/home/upper/upper_home.dart';
import 'package:animated_container/Model/MenuPrincipal.dart';
import 'package:animated_container/Model/MenuRecolhido.dart';
import 'package:animated_container/data/inventory_data.dart';
import 'package:animated_container/widgets/widget_pagina_desenvolvimento.dart';
import 'package:flutter/material.dart';

class MotionInputPage extends StatefulWidget {
  const MotionInputPage({Key? key}) : super(key: key);

  @override
  State<MotionInputPage> createState() => _MotionInputPageState();
}

class _MotionInputPageState extends State<MotionInputPage> {
  bool select = true;
  late final MenuPrincipal principal;
  late final MenuRecolhido recolhido;
  final DataTableSource inventory = MyDataInventory();
  // Initial Selected Value
  String dropdownvalue = 'Entrada';
  Color selectedColor = Colors.red;

  // List of items in our dropdown menu
  var items = [
    'Entrada',
    'Transferência',
    'Devolução',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          select
              ? MenuPrincipal(child: MainContainer())
              : MenuRecolhido(child: RetractContainer()),
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
                Row(
                  children: [
                    Wrap(
                      children: [
                        Material(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5),
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                            child: Flexible(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * .10,
                                height:
                                    MediaQuery.of(context).size.height * .05,
                                child: Center(
                                  child: Text(
                                    'Movimentações',
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF), fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .005),
                        Material(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5),
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                            child: Flexible(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * .10,
                                height:
                                    MediaQuery.of(context).size.height * .05,
                                child: Center(
                                  child: Text(
                                    'Amoxarifado',
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF), fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .005),
                        Material(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5),
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                            child: Flexible(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * .10,
                                height:
                                    MediaQuery.of(context).size.height * .05,
                                child: Center(
                                  child: Text(
                                    'Produtos',
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF), fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .005),
                        Material(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5),
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                            child: Flexible(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * .10,
                                height:
                                    MediaQuery.of(context).size.height * .05,
                                child: Center(
                                  child: Text(
                                    'Grupos de produtos',
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF), fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .005),
                        Material(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5),
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                            child: Flexible(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * .10,
                                height:
                                    MediaQuery.of(context).size.height * .05,
                                child: Center(
                                  child: Text(
                                    'Fornecedores',
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF), fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .005),
                        Material(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5),
                          child: InkWell(
                            onTap: () {},
                            splashColor: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                            child: Flexible(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * .10,
                                height:
                                    MediaQuery.of(context).size.height * .05,
                                child: Center(
                                  child: Text(
                                    'Consultas',
                                    style: TextStyle(
                                        color: Color(0xffFFFFFF), fontSize: 14),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Wrap(
                      children: [
                        Material(
                          color: selectedColor,
                          borderRadius: BorderRadius.circular(5),
                          child: Flexible(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * .10,
                              height: MediaQuery.of(context).size.height * .05,
                              child: Center(
                                child: DropdownButton(
                                  // Initial Value
                                  value: dropdownvalue,
                                  dropdownColor: Colors.red,
                                  underline: Container(),
                                  // Down Arrow Icon
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.white,
                                  ),
                                  items: items.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(
                                        items,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    );
                                  }).toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownvalue = newValue!;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .005),
                        Material(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                          child: Flexible(
                            child: SizedBox(
                                width: MediaQuery.of(context).size.width * .12,
                                height:
                                    MediaQuery.of(context).size.height * .05,
                                child: TextButton.icon(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            PaginaDesenvolvimento(),
                                      ),
                                    );
                                  },
                                  icon: Icon(
                                    Icons.add_outlined,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    'NOVA ENTRADA',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * .005),
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
                      ],
                    )
                  ],
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
                                builder: (context) => PaginaDesenvolvimento(),
                              ),
                            );
                          },
                          child: PaginatedDataTable(
                            source: inventory,
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
                                  'Tarefa',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Descrição',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Excluir',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                            dataRowHeight: 50,
                            arrowHeadColor: Colors.red,
                            columnSpacing: 5,
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
      )),
    );
  }
}
