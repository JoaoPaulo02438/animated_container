import 'package:animated_container/Components/Home/container/mainContainer.dart';
import 'package:animated_container/Components/Home/container/retractContainer.dart';
import 'package:animated_container/Components/home/upper/upper_home.dart';
import 'package:animated_container/Views/microservices/Search/search%20_page.dart';
import 'package:animated_container/Widgets/widget_search_textbutton.dart';
import 'package:flutter/material.dart';

class SearchNew extends StatefulWidget {
  const SearchNew({Key? key}) : super(key: key);

  @override
  State<SearchNew> createState() => _SearchNewState();
}

class _SearchNewState extends State<SearchNew> {
  bool select = true;
  bool isSwitched = false;
  bool isSwitch = false;

  final List<String> menuDrop = [
    'Múltipla escolha',
    'Claro',
    'Tools',
    'Claro tools'
  ];
  String? selectedOption;

  Color? bgColor = Colors.pink;

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
                //top buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [UpperHome()],
                ),

                SizedBox(height: 30),

                //title new search
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
                        'Nova Pesquisa',
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

                //container 
                Row(
                  children: [
                    //buttons
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .15,
                          height: MediaQuery.of(context).size.height * .55,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1.0, color: Colors.grey),
                          ),
                          child: Wrap(
                            children: [
                              Center(
                                child: Text(
                                  'Modelos salvos',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              WidgetSearchTextButton(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.grey),
                                onPressed: () {},
                                nameButton: 'Teste de qualidade',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                              WidgetSearchTextButton(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.grey),
                                onPressed: () {},
                                nameButton: 'Pesquisa de satisfação',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                              WidgetSearchTextButton(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.grey),
                                onPressed: () {},
                                nameButton: 'Apuração de estoque',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                              WidgetSearchTextButton(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.grey),
                                onPressed: () {},
                                nameButton: 'Teste de qualidade',
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    //search
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .45,
                          height: MediaQuery.of(context).size.height * .55,
                          decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1.0, color: Colors.grey),
                          ),
                          child: Wrap(
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
                              Container(
                                  width: 200,
                                  height: 40,
                                  child: Center(
                                      child: Text(
                                    'Salvar como modelo',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                      color: Colors.black,
                                    ),
                                  ))),
                              Container(
                                width: 110,
                                height: 40,
                                child: Switch(
                                    activeColor: Colors.red,
                                    value: isSwitched,
                                    onChanged: (value) {
                                      setState(() {
                                        isSwitched = value;
                                      });
                                    }),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 1.0, color: Colors.grey),
                                  ),
                                  width: 250,
                                  height: 50,
                                  child: Center(
                                    child: Text(
                                      'Pergunta sem titulo',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 50,
                                height: 50,
                                child: Icon(
                                  Icons.image,
                                  color: Colors.grey,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 1.0, color: Colors.grey),
                                  ),
                                  width: 250,
                                  height: 50,
                                  child: Center(
                                    child: DropdownButton<String>(
                                      items: menuDrop
                                          .map((e) => DropdownMenuItem(
                                                value: e,
                                                child: Text(
                                                  e,
                                                  style: const TextStyle(
                                                      fontSize: 16),
                                                ),
                                              ))
                                          .toList(),
                                      onChanged: (value) {
                                        setState(() {
                                          selectedOption = value;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 250,
                                  height: 100,
                                  child: Wrap(
                                    children: [
                                      RadioListTile(
                                        title: Text(
                                          'Opção 1',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14),
                                        ),
                                        value: Colors.green,
                                        groupValue: bgColor,
                                        onChanged: (Color? value) {
                                          setState(() {
                                            bgColor = value;
                                          });
                                        },
                                      ),
                                      RadioListTile(
                                        title: Text(
                                          'Adicionar outra opção',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                        ),
                                        value: Colors.orange,
                                        groupValue: bgColor,
                                        onChanged: (Color? value) {
                                          setState(() {
                                            bgColor = value;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Divider(
                                  color: Colors.grey,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      child: Icon(
                                        Icons.content_copy,
                                        color: Colors.grey,
                                        size: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      child: Icon(
                                        Icons.delete_outline_sharp,
                                        color: Colors.grey,
                                        size: 20,
                                      ),
                                    ),
                                    SizedBox(
                                      child: Switch(
                                          activeColor: Colors.red,
                                          value: isSwitch,
                                          onChanged: (value) {
                                            setState(() {
                                              isSwitch = value;
                                            });
                                          }),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
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
