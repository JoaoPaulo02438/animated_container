import 'package:animated_container/Components/home/menu/gesturePri.dart';
import 'package:animated_container/Components/home/menu/gestureRec.dart';
import 'package:animated_container/Components/home/upper/upper_home.dart';

import 'package:animated_container/data/search_data.dart';
import 'package:animated_container/data/search_data_information.dart';
import 'package:flutter/material.dart';

import 'search _page.dart';

class SearchInformation extends StatefulWidget {
  const SearchInformation({Key? key}) : super(key: key);

  @override
  State<SearchInformation> createState() => _SearchInformationState();
}

class _SearchInformationState extends State<SearchInformation> {
  final DataTableSource data = MyData();
  final DataTableSource information = MyDataInformation();
  bool select = true;
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(children: [
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
                            builder: (context) => SearchPage(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_circle_left_outlined,
                        color: Colors.black,
                      ),
                      label: Text(
                        'Informações Gerais',
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
                            height: MediaQuery.of(context).size.height * .05,
                            child: Center(
                              child: Text(
                                'Editar',
                                style: TextStyle(
                                    color: Color(0xffFFFFFF), fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
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
                            height: MediaQuery.of(context).size.height * .05,
                            child: Center(
                              child: Text(
                                'Simular',
                                style: TextStyle(
                                    color: Color(0xffFFFFFF), fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
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
                            height: MediaQuery.of(context).size.height * .05,
                            child: Center(
                              child: Text(
                                'Compartilhar',
                                style: TextStyle(
                                    color: Color(0xffFFFFFF), fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
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
                            height: MediaQuery.of(context).size.height * .05,
                            child: Center(
                              child: Text(
                                'Resultado',
                                style: TextStyle(
                                    color: Color(0xffFFFFFF), fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
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
                            height: MediaQuery.of(context).size.height * .05,
                            child: Center(
                              child: Text(
                                'Excluir',
                                style: TextStyle(
                                    color: Color(0xffFFFFFF), fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Material(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(5),
                      child: InkWell(
                        onTap: () {},
                        splashColor: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        child: Flexible(
                          child: SizedBox(
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
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .25,
                      height: MediaQuery.of(context).size.height * .05,
                      child: Text(
                        'Pesquisa de Satisfação ID #100',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    SizedBox(
                      child: Material(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(5),
                        child: Flexible(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * .18,
                            height: MediaQuery.of(context).size.height * .07,
                            child: SwitchListTile.adaptive(
                                title: Text(
                                  'Salvar como modelo',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.red,
                                  ),
                                ),
                                activeColor: Colors.red,
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                  });
                                }),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Criada em 03/08/2022 às 10:14',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .25,
                      height: MediaQuery.of(context).size.height * .05,
                      child: Text(
                        'Resposável: 222',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: MediaQuery.of(context).size.width * .15,
                      height: MediaQuery.of(context).size.height * .05,
                      child: Text(
                        'Última coleta: 03/08/2022 10h14',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: MediaQuery.of(context).size.width * .20,
                      height: MediaQuery.of(context).size.height * .05,
                      child: Text(
                        'Qtde de Execuções: 0',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Compartilhamentos',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black),
                    ),
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
                        Container(
                          color: Colors.grey[300],
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SearchInformation(),
                                ),
                              );
                            },
                            child: PaginatedDataTable(
                              source: information,
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
                                    'Data Inicial',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Data Final',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Grupo',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Base de dados',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'MicroRegião',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                                DataColumn(
                                  label: Text(
                                    'Usuário',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ),
                              ],
                              dataRowHeight: 70,
                              arrowHeadColor: Colors.red,
                              columnSpacing: 50,
                              horizontalMargin: 10,
                              rowsPerPage: 3,
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
        ]),
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
