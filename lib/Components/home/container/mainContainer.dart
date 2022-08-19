import 'package:animated_container/Views/Microservices/inventory/inventory_page.dart';
import 'package:animated_container/Views/microservices/Journey/journey_page.dart';
import 'package:animated_container/Views/microservices/Search/search%20_page.dart';
import 'package:animated_container/Views/microservices/Tasks/tasks_page.dart';
import 'package:animated_container/widgets/widget_pagina_desenvolvimento.dart';
import 'package:flutter/material.dart';

class MainContainer extends StatefulWidget {
  const MainContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer>
    with SingleTickerProviderStateMixin {
  List<String> images = [
    "images/base_de_dados.png",
    "images/jornada.png",
    "images/trajetos.png",
    "images/estoque.png",
    "images/pesquisa.png",
    "images/tarefas.png",
    "images/avisos.png",
  ];

  bool select = true;
  bool isCollapsed = false;
  //bool _isPlay = false;
  double maxWidth = 250;
  double minWidth = 70;
  late final AnimationController _controller;
  late final Animation<double> widthAnimation;

  @override
  void initState() {
    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
    widthAnimation =
        Tween<double>(begin: maxWidth, end: minWidth).animate(_controller);
    super.initState();
  }

  // Dispose the controller
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //lOGO
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 130,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage('images/claro_tools.png'),
                          fit: BoxFit.fitWidth)),
                ),
              ),
              Flexible(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://storage.googleapis.com/production-hostgator-brasil-v1-0-8/168/402168/mIDsiod9/3c6176441f12428f8040b9944a123aef'),
                  radius: 25,
                ),
              ),
              Flexible(
                child: InkWell(
                  onTap: () {
                    isCollapsed = !isCollapsed;
                    isCollapsed ? _controller.forward() : _controller.reverse();
                    setState(() {
                      /*Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MenuRecolhido()),
                      );*/
                    });
                  },
                  child: AnimatedIcon(
                    icon: AnimatedIcons.arrow_menu,
                    progress: _controller,
                    size: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),

        //BOTÃO PESQUISAR
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  height: 40,
                  width: 250,
                  //margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 60.0),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Pesquisar',
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 14.0),
                        suffixIcon: Icon(
                          Icons.search,
                          size: 12.0,
                          color: Colors.grey,
                        )),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),

        //MICROSERVIÇOS
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'MICROSERVIÇOS',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
        SizedBox(height: 5),

        //GRID ICONES SERVIÇOS

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView(
            //physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 3.0,
            ),

            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaginaDesenvolvimento()),
                  );
                },
                child: Container(
                  padding:
                      EdgeInsets.only(left: 0, top: 5, right: 0, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Image.asset('images/base_de_dados.png'),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => JourneyPage(),
                    ),
                  );
                },
                child: Container(
                  padding:
                      EdgeInsets.only(left: 0, top: 5, right: 0, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Image.asset('images/jornada.png'),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaginaDesenvolvimento()),
                  );
                },
                child: Container(
                  padding:
                      EdgeInsets.only(left: 0, top: 5, right: 0, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Image.asset('images/trajetos.png'),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InventoryPage()),
                  );
                },
                child: Container(
                  padding:
                      EdgeInsets.only(left: 0, top: 5, right: 0, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Image.asset('images/estoque.png'),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchPage(),
                    ),
                  );
                },
                child: Container(
                  padding:
                      EdgeInsets.only(left: 0, top: 5, right: 0, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Image.asset('images/pesquisa.png'),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TasksPage(),
                    ),
                  );
                },
                child: Container(
                  padding:
                      EdgeInsets.only(left: 0, top: 5, right: 0, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Image.asset('images/tarefas.png'),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PaginaDesenvolvimento()),
                  );
                },
                child: Container(
                  padding:
                      EdgeInsets.only(left: 0, top: 5, right: 0, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Image.asset('images/avisos.png'),
                ),
              ),
            ],
          ),
        ),
        //itemCount: 7,
        // itemBuilder: (context, int index) {
        //   return InkWell(
        //     onTap: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(
        //           builder: (context) => PesquisaPage(),
        //         ),
        //       );
        //     },
        //     child: Container(
        //       padding:
        //           EdgeInsets.only(left: 0, top: 5, right: 0, bottom: 5),
        //       decoration: BoxDecoration(
        //         borderRadius: BorderRadius.circular(10),
        //         color: Colors.white,
        //       ),
        //       child: Image.asset(images[index]),
        //     ),
        //   );
        // },

        SizedBox(
          height: 50,
        ),

        //GRID INFERIOR
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(top: 10),
                    width: 75,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xffD52B1E),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Flexible(
                      child: Text(
                        'tools v 01.2022 by redeinova',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 75,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage('images/suporte.png'),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 75,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      image: DecorationImage(
                          image: AssetImage('images/sair.png'),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
