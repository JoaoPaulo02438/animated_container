import 'package:flutter/material.dart';

class RetractContainer extends StatelessWidget {
  RetractContainer({Key? key}) : super(key: key);

  List<String> images = [
    "images/ibase_de_dados.png",
    "images/ijornada.png",
    "images/itrajetos.png",
    "images/iestoque.png",
    "images/ipesquisa.png",
    "images/itarefas.png",
    "images/itrajetos.png",
    "images/iavisos.png",
    "imagens/isuporte.png",
    "imagens/isair.png",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //lOGO
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage('images/claro_tools.png'),
                        fit: BoxFit.fitWidth)),
              ),
            ],
          ),
        ),
        //LOGIN
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                    'https://storage.googleapis.com/production-hostgator-brasil-v1-0-8/168/402168/mIDsiod9/3c6176441f12428f8040b9944a123aef'),
                radius: 25,
              ),
            ],
          ),
        ),

        //PESQUISAR
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: Container(
                  padding:
                      EdgeInsets.only(left: 0, top: 5, right: 0, bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: 60,
                  height: 50,
                  //margin: EdgeInsets.symmetric(horizontal: 4.0, vertical: 60.0),
                  child: TextField(
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintStyle: TextStyle(color: Colors.grey),
                        suffixIcon: Center(
                          child: Icon(
                            Icons.search,
                            size: 20.0,
                            color: Colors.grey,
                          ),
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

        //GRID ICONES SERVIÇOS
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            //physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 3.0,
            ),
            itemCount: 5,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {},
                child: Container(
                  padding:
                      EdgeInsets.only(left: 0, top: 5, right: 0, bottom: 5),
                  width: MediaQuery.of(context).size.width * .04,
                  height: MediaQuery.of(context).size.height * .07,
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
          height: 10,
        ),
        //INFERIOR
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            //physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 1.0,
            ),
            itemCount: 1,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {},
                  child: Container(
                    padding:
                        EdgeInsets.only(left: 0, top: 5, right: 0, bottom: 5),
                    width: MediaQuery.of(context).size.width * .04,
                    height: MediaQuery.of(context).size.height * .05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Image(
                      image: AssetImage('images/isuporte.png'),
                    ),
                  ));
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            //physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 1.0,
            ),
            itemCount: 1,
            itemBuilder: (context, index) {
              return InkWell(
                  onTap: () {},
                  child: Container(
                    padding:
                        EdgeInsets.only(left: 0, top: 5, right: 0, bottom: 5),
                    width: MediaQuery.of(context).size.width * .04,
                    height: MediaQuery.of(context).size.height * .05,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Image(
                      image: AssetImage('images/sair.png'),
                    ),
                  ));
            },
          ),
        ),
      ],
    );
  }
}
