// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class NotificationHome extends StatelessWidget {
  const NotificationHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          width: MediaQuery.of(context).size.width * .20,
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
                            'https://www.woolha.com/media/2020/03/eevee.png'),
                        radius: 25,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'João Paulo\nDesenvolvimento',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Bem-vindos ao Portal Tools, confira as novidades na aba do menu superior.',
                        style: TextStyle(
                          fontSize: 14,
                        ),
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
      ),
      SizedBox(width: 10),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          width: MediaQuery.of(context).size.width * .20,
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
                            'https://www.woolha.com/media/2020/03/eevee.png'),
                        radius: 25,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'João Paulo\nDesenvolvimento',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Bem-vindos ao Portal Tools, confira as novidades na aba do menu superior.',
                        style: TextStyle(
                          fontSize: 14,
                        ),
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
      ),
      SizedBox(width: 10),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          width: MediaQuery.of(context).size.width * .20,
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
                            'https://www.woolha.com/media/2020/03/eevee.png'),
                        radius: 25,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'João Paulo\nDesenvolvimento',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Bem-vindos ao Portal Tools, confira as novidades na aba do menu superior.',
                        style: TextStyle(
                          fontSize: 14,
                        ),
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
      ),
    ]);
  }
}
