import 'package:flutter/material.dart';

class NotificationHome extends StatelessWidget {
  const NotificationHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        //1 Container
        Container(
          child: Column(
            children: [
              //1 linha
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(
                            'https://www.woolha.com/media/2020/03/eevee.png'),
                        radius: 25,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'João Paulo Bezerra \nDesenvolvimento',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Align(
                      //alignment: Alignment.topRight,
                      child: IconButton(
                        alignment: Alignment.bottomRight,
                        icon: Icon(
                          Icons.more_horiz,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              //2 linha
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Bem-vindos ao Portal Tools, confira as \nnovidades na aba do menu superior.',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              //3 linha
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'postado ás 12:26 18/07/2022',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          width: MediaQuery.of(context).size.width * .25,
          height: MediaQuery.of(context).size.height * .25,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 3,
                offset: Offset(1, 1),
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(width: 10),
        //2 Container
        Container(
          child: Column(
            children: [
              //1 linha
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        backgroundImage: NetworkImage(
                            'https://www.woolha.com/media/2020/03/eevee.png'),
                        radius: 25,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Cleiton Jr. \nDesenvolvimento',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Align(
                      //alignment: Alignment.topRight,
                      child: IconButton(
                        alignment: Alignment.bottomRight,
                        icon: Icon(
                          Icons.more_horiz,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              //2 linha
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Segue manual para utilização das \nferramentas do portal.',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              //3 linha
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'postado ás 12:26 18/07/2022',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          width: MediaQuery.of(context).size.width * .25,
          height: MediaQuery.of(context).size.height * .25,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 3,
                offset: Offset(1, 1),
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(width: 10),
        Container(
          child: Column(
            children: [
              //1 linha
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          'https://www.woolha.com/media/2020/03/eevee.png'),
                      radius: 25,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Douglas Bi. \nDesenvolvimento',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  IconButton(
                    alignment: Alignment.topLeft,
                    icon: Icon(
                      Icons.more_horiz,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              //2 linha
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        'Segue manual para utilização das \nferramentas do portal.',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              //3 linha
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'postado ás 12:26 18/07/2022',
                        style: TextStyle(fontSize: 8),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          width: MediaQuery.of(context).size.width * .25,
          height: MediaQuery.of(context).size.height * .25,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 3,
                offset: Offset(1, 1),
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ],
    );
  }
}
