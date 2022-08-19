import 'package:animated_container/Views/home.dart';
import 'package:animated_container/Widgets/widget_upper_bottons.dart';

import 'package:animated_container/widgets/widget_pagina_desenvolvimento.dart';
import 'package:flutter/material.dart';

class UpperHome extends StatelessWidget {
  const UpperHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // botton home
        WidgetUpperBottons(
          padding: EdgeInsets.only(top: 10),
          string: 'Home',
          colorBotton: Color(0xffFFFFFF),
          colorString: Colors.black,
          splashColor: Colors.red,
          widthMediaQuery: MediaQuery.of(context).size.width * .10,
          heigthMediaQuery: MediaQuery.of(context).size.height * .04,
          fontSize: 12,
          borderRadius: BorderRadius.circular(10),
          elevation: 5,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Home(),
              ),
            );
          },
        ),

        SizedBox(width: 10),

        // botton widgets
        WidgetUpperBottons(
          padding: EdgeInsets.only(top: 10),
          string: 'Widgets',
          colorBotton: Color(0xffFFFFFF),
          colorString: Colors.black,
          splashColor: Colors.red,
          widthMediaQuery: MediaQuery.of(context).size.width * .10,
          heigthMediaQuery: MediaQuery.of(context).size.height * .04,
          fontSize: 12,
          borderRadius: BorderRadius.circular(10),
          elevation: 5,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PaginaDesenvolvimento(),
              ),
            );
          },
        ),

        SizedBox(width: 10),

        // botton microserviços
        WidgetUpperBottons(
          padding: EdgeInsets.only(top: 10),
          string: 'Microserviços',
          colorBotton: Color(0xffFFFFFF),
          colorString: Colors.black,
          splashColor: Colors.red,
          widthMediaQuery: MediaQuery.of(context).size.width * .10,
          heigthMediaQuery: MediaQuery.of(context).size.height * .04,
          fontSize: 12,
          borderRadius: BorderRadius.circular(10),
          elevation: 5,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PaginaDesenvolvimento(),
              ),
            );
          },
        ),
      ],
    );
  }
}
