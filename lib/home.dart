import 'package:animated_container/Widgets/home/button_menu.dart';
import 'package:animated_container/Widgets/home/gesturePri.dart';
import 'package:animated_container/Widgets/home/gestureRec.dart';
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
                ButtonMenu(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget GesturePrincipal() {
    return GestureDetector(
      onTap: () {
        setState(() {
          select = !select;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedContainer(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 143, 5, 12),
                borderRadius: BorderRadius.circular(20)),
            alignment: Alignment.topCenter,
            duration: Duration(seconds: 1),
            height: MediaQuery.of(context).size.height / 0.9,
            width: MediaQuery.of(context).size.height / 2.5,
            child: GesturePri()),
      ),
    );
  }

  Widget GestureRecolhido() {
    return GestureDetector(
      onTap: () {
        setState(() {
          select = !select;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedContainer(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 143, 5, 12),
                borderRadius: BorderRadius.circular(20)),
            alignment: Alignment.topLeft,
            duration: Duration(seconds: 1),
            height: MediaQuery.of(context).size.height / 0.4,
            width: MediaQuery.of(context).size.height / 10.0,
            child: GestureRec(select: true)),
      ),
    );
  }
}
