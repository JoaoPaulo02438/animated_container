// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: MediaQuery.of(context).size.width * .30,
        height: MediaQuery.of(context).size.height * .35,
        decoration: BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 3,
              offset: const Offset(1, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://curiosityhuman.com/wp-content/uploads/2016/01/Albert-Einstein-famous-people-of-all-time-1024x942.jpg'),
                      radius: 25,
                    ),
                  ),
                ),
                Flexible(
                  child: Text(
                    'Cleiton JR\nDesenvolvimento',
                    style: TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 210),
                //Icon(Icons.more_horiz),

                Material(
                  child: InkWell(
                    child: PopupMenuButton(
                      offset: Offset(25, 100),
                      color: Color(0xFFD52B1E),

                      //splashRadius: 15,
                      //position: PopupMenuPosition.under,
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(30.0),
                        ),
                      ),
                      tooltip: '',
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: ListTile(
                            title: Text(
                              'Criar Aviso',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: ListTile(
                            title: Text(
                              'Editar Aviso',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          value: 2,
                        ),
                        PopupMenuItem(
                          child: ListTile(
                            title: Text(
                              'Excluir',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          value: 3,
                        ),
                      ],
                      icon: Icon(
                        Icons.more_horiz,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
                /*Material(
                  child: InkWell(
                    splashColor: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    child: Icon(Icons.more_horiz),
                    onTap: () {},
                  ),
                  
                ),*/
              ],
            ),

            Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Bem-vindos ao Portal Tools, confira as novidades na aba do menu superior.',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      'postado ás 14:37 em 21/07/2022',
                      style: TextStyle(
                        fontSize: 8,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // ignore: prefer_const_constructors
            // ignore: prefer_const_constructors
          ],
        ),
      ),
    );
  }
}
