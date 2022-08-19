import 'package:animated_container/Components/Home/container/mainContainer.dart';
import 'package:animated_container/Components/Home/container/retractContainer.dart';
import 'package:animated_container/Components/home/upper/upper_home.dart';
import 'package:animated_container/Views/microservices/Tasks/tasks_page.dart';
import 'package:animated_container/widgets/widget_pagina_desenvolvimento.dart';
import 'package:flutter/material.dart';

class TasksNew extends StatefulWidget {
  const TasksNew({Key? key}) : super(key: key);

  @override
  State<TasksNew> createState() => _TasksNewState();
}

class _TasksNewState extends State<TasksNew> {
  bool select = true;
  bool isSwitched = false;
  bool isSwitch = false;

  // define a list of options for the dropdown
  final List<String> _filter = [
    "Visita",
    "Treinamento",
    "Trocar máquina stone",
    "Atualização app"
  ];
  final List<String> _order = [
    "Visita",
    "Treinamento",
    "Trocar máquina stone",
    "Atualização app"
  ];

  // the selected value
  String? _selectedFilter;
  String? _selectedOrder;

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
                  SizedBox(height: 30),
                  Row(
                    children: [
                      TextButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TasksPage(),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.arrow_circle_left_outlined,
                          color: Colors.black,
                        ),
                        label: Text(
                          'Nova tarefa',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        width: 300,
                        height: 40,
                        child: Wrap(
                          children: [
                            Icon(
                              Icons.edit,
                              size: 12,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Titulo: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 8),
                        child: Text(
                          'Criada em 03/08/2022 às 10:15',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        width: 300,
                        height: 40,
                        child: Wrap(
                          children: [
                            Icon(
                              Icons.edit,
                              size: 12,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Descrição: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .50,
                        height: MediaQuery.of(context).size.height * .25,
                        decoration: BoxDecoration(
                          color: Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1.0, color: Colors.grey),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintStyle: TextStyle(color: Colors.grey),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 20.0),
                          ),
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .15,
                        height: MediaQuery.of(context).size.height * .05,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Tipo de atedimento:',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: MediaQuery.of(context).size.width * .10,
                        height: MediaQuery.of(context).size.height * .05,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Registro de imagem',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: MediaQuery.of(context).size.width * .05,
                        height: MediaQuery.of(context).size.height * .05,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Switch(
                              activeColor: Colors.red,
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                });
                              }),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: MediaQuery.of(context).size.width * .10,
                        height: MediaQuery.of(context).size.height * .05,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Retorno',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: MediaQuery.of(context).size.width * .05,
                        height: MediaQuery.of(context).size.height * .05,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Switch(
                              activeColor: Colors.red,
                              value: isSwitch,
                              onChanged: (value) {
                                setState(() {
                                  isSwitch = value;
                                });
                              }),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .12,
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
                            'Origem: ',
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
                        width: MediaQuery.of(context).size.width * .12,
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
                            'Destino: ',
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
                      SizedBox(width: 20),
                      Material(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                        child: Flexible(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * .12,
                            height: MediaQuery.of(context).size.height * .05,
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
                                'Adicionar',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Material(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                        child: Flexible(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * .11,
                            height: MediaQuery.of(context).size.height * .05,
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
                                Icons.save_outlined,
                                color: Colors.white,
                              ),
                              label: Text(
                                'Salvar',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
