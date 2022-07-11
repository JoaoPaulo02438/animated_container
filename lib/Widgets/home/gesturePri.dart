import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class GesturePri extends StatelessWidget {
  const GesturePri({
    Key? key,
  }) : super(key: key);

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
              Container(
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
              CircleAvatar(
                radius: 25,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                ),
              )
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
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                height: MediaQuery.of(context).size.height * .05,
                width: MediaQuery.of(context).size.width * .18,
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
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Text("serviço: $index"),
              );
            },
          ),
        ),
        SizedBox(
          height: 30,
        ),
        //GRID INFERIOR
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
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Text("inferior: $index"),
              );
            },
          ),
        ),
      ],
    );
  }
}
