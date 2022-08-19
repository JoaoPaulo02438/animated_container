import 'package:animated_container/Components/Home/container/mainContainer.dart';
import 'package:animated_container/Components/Home/container/retractContainer.dart';
import 'package:animated_container/Components/Home/dashboards/dash_charts_line.dart';
import 'package:animated_container/Components/Home/dashboards/dash_charts_new.dart';
import 'package:animated_container/Components/Home/dashboards/dash_charts_pie.dart';
import 'package:animated_container/Components/home/notifications/notifications_home.dart';
import 'package:animated_container/Components/home/upper/team_home.dart';
import 'package:animated_container/Components/home/upper/upper_home.dart';
import 'package:animated_container/Model/MenuPrincipal.dart';
import 'package:animated_container/Model/MenuRecolhido.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool select = true;
  late final MenuPrincipal principal;
  late final MenuRecolhido recolhido;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(239, 239, 239, 1),
      body: SafeArea(
        child: Row(
          children: [
            select
                ? MenuPrincipal(
                    inkwell: InkWell(onTap: () {}),
                    child: MainContainer(),
                  )
                : MenuRecolhido(
                    inkwell: InkWell(onTap: () {}),
                    child: RetractContainer(),
                  ),
            //select ? GesturePrincipal() : GestureRecolhido(),

            //Container
            AnimatedContainer(
              duration: Duration(seconds: 1),
              height: MediaQuery.of(context).size.height / 0.9,
              width: MediaQuery.of(context).size.height / 0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //top buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UpperHome(),
                    ],
                  ),

                  SizedBox(height: 30),

                  //team buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TeamHome(),
                    ],
                  ),

                  SizedBox(height: 30),

                  //graphics
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      DashChartsLine(),
                      SizedBox(width: 10),
                      DashChartsPie(),
                      SizedBox(width: 10),
                      DashChartsNew(),
                      //DashboardHome(),
                    ],
                  ),

                  SizedBox(height: 30),

                  //string notifications
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Avisos',
                          style: TextStyle(
                              color: Colors.red[600],
                              fontWeight: FontWeight.w700,
                              fontSize: 20)),
                    ],
                  ),

                  //notifications
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      NotificationHome(),
                    ],
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /* Widget GesturePrincipal() {
    return InkWell(
      onTap: () {
        setState(() {
          select = !select;
        });
      },
      child: Flexible(
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
            child: GesturePri(),
          ),
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
            child: GestureRec(),
          ),
        ),
      ),
    );
  }*/
}
