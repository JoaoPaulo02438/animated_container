import 'package:animated_container/Widgets/home/avisos_home.dart';
import 'package:animated_container/Widgets/home/button_home.dart';
import 'package:animated_container/Widgets/home/gesturePri.dart';
import 'package:animated_container/Widgets/home/gestureRec.dart';
import 'package:animated_container/Widgets/home/graficos_home.dart';

import 'package:animated_container/Widgets/home/status_home.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool select = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Row(
          children: [
            select ? GesturePrincipal() : GestureRecolhido(),
            Column(
              children: [
                ButtonHome(),
                SizedBox(height: 50),
                StatusHome(),
                SizedBox(height: 50),
                GraficosHome(),
                SizedBox(height: 50),
                AvisosHome(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget GesturePrincipal() {
    return Flexible(
      child: InkWell(
        onTap: () {
          setState(() {
            select = !select;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedContainer(
              decoration: BoxDecoration(
                  color: const Color(0xffD52B1E),
                  borderRadius: BorderRadius.circular(20)),
              alignment: Alignment.topCenter,
              duration: Duration(milliseconds: 1),
              height: MediaQuery.of(context).size.height / 0.9,
              width: MediaQuery.of(context).size.height / 2.5,
              child: GesturePri()),
        ),
      ),
    );
  }

  Widget GestureRecolhido() {
    return Flexible(
      child: InkWell(
        onTap: () {
          setState(() {
            select = !select;
          });
        },
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedContainer(
                decoration: BoxDecoration(
                    color: const Color(0xffD52B1E),
                    borderRadius: BorderRadius.circular(20)),
                alignment: Alignment.topLeft,
                duration: Duration(milliseconds: 1),
                height: MediaQuery.of(context).size.height / 0.5,
                width: MediaQuery.of(context).size.height / 9,
                child: GestureRec()),
          ),
        ),
      ),
    );
  }
}
