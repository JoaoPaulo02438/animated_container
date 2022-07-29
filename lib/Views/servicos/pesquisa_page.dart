import 'dart:ui';

import 'package:animated_container/Components/home/menu/gestureRec.dart';
import 'package:animated_container/Components/home/upper/upper_home.dart';
import 'package:animated_container/components/home/menu/gesturePri.dart';
import 'package:animated_container/widgets/retract_animation.dart';
import 'package:flutter/material.dart';

import '../../widgets/main_animation.dart';

class PesquisaPage extends StatefulWidget {
  const PesquisaPage({Key? key}) : super(key: key);

  @override
  State<PesquisaPage> createState() => _PesquisaPageState();
}

class _PesquisaPageState extends State<PesquisaPage> {
  bool select = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            select ? GesturePrincipal() : GestureRecolhido(),
            AnimatedContainer(
              duration: Duration(seconds: 1),
              height: MediaQuery.of(context).size.height / 0.9,
              width: MediaQuery.of(context).size.height / 0.8,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceAround,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UpperHome(),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 100,
                          height: MediaQuery.of(context).size.height * .08,
                          color: Colors.yellow,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 100,
                        height: MediaQuery.of(context).size.height * .08,
                        color: Colors.purple,
                      ),
                      Container(
                        //color: Colors.yellow,
                        width: MediaQuery.of(context).size.width * 100,
                        height: MediaQuery.of(context).size.height * .08,
                        child: GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 5.0,
                              mainAxisSpacing: 5.0,
                            ),
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.gradient,
                                  color: Colors.black,
                                ),
                                label: Text(
                                  'data',
                                  style: TextStyle(color: Colors.black),
                                ),
                              );
                            }),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 100,
                        height: MediaQuery.of(context).size.height * .65,
                        color: Colors.blueGrey,
                        child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4,
                              crossAxisSpacing: 5.0,
                              mainAxisSpacing: 5.0,
                            ),
                            itemCount: 12,
                            itemBuilder: (context, index) {
                              return TextButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.gradient,
                                  color: Colors.black,
                                ),
                                label: Text(
                                  'data',
                                  style: TextStyle(color: Colors.black),
                                ),
                              );
                            }),
                      ),
                    ],
                  )
                ],
              ),
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
