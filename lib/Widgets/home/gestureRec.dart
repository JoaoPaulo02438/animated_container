import 'package:flutter/material.dart';

class GestureRec extends StatelessWidget {
  GestureRec({Key? key}) : super(key: key);

  List<String> images = [
    "images/ibase_de_dados.png",
    "images/ijornada.png",
    "images/itrajetos.png",
    "images/iestoque.png",
    "images/ipesquisa.png",
    "images/itarefas.png",
    "images/itrajetos.png",
    "images/iavisos.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //lOGO
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    'https://www.woolha.com/media/2020/03/eevee.png'),
                radius: 25,
              ),
            ],
          ),
        ),

        //PESQUISAR
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                width: 52,
                height: 42,
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
                          textDirection: TextDirection.rtl,
                        ),
                      )),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ),
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
          height: 20,
        ),
        //INFERIOR
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width * .04,
                    height: MediaQuery.of(context).size.height * .07,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('images/isuporte.png'),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ),
              ],
            )),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width * .04,
                    height: MediaQuery.of(context).size.height * .07,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('images/isair.png'),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
