import 'package:animated_container/Views/servicos/pesquisa_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GesturePri extends StatelessWidget {
  GesturePri({
    Key? key,
  }) : super(key: key);

  List<String> images = [
    "images/base_de_dados.png",
    "images/jornada.png",
    "images/trajetos.png",
    "images/estoque.png",
    "images/pesquisa.png",
    "images/tarefas.png",
    "images/avisos.png",
  ];

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
                      'https://www.woolha.com/media/2020/03/eevee.png'),
                  radius: 25,
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
          child: GridView.builder(
            //physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 3.0,
            ),
            itemCount: 7,
            itemBuilder: (context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PesquisaPage(),
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
                  child: Image.asset(images[index]),
                ),
              );
            },
          ),
        ),

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
