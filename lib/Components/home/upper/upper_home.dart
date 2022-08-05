import 'package:animated_container/Views/home.dart';
import 'package:animated_container/widgets/widget_pagina_desenvolvimento.dart';
import 'package:flutter/material.dart';

class UpperHome extends StatelessWidget {
  const UpperHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Material(
            elevation: 5,
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              splashColor: Colors.red,
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .10,
                height: MediaQuery.of(context).size.height * .04,
                child: Center(
                  child: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Material(
            elevation: 5,
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              splashColor: Colors.red,
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .10,
                height: MediaQuery.of(context).size.height * .04,
                child: Center(
                  child: Text(
                    'Widgets',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaginaDesenvolvimento(),
                  ),
                );
              },
            ),
          ),
        ),
        SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Material(
            elevation: 5,
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              splashColor: Colors.red,
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .10,
                height: MediaQuery.of(context).size.height * .04,
                child: Center(
                  child: Text(
                    'Microserviços',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaginaDesenvolvimento(),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
