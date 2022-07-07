import 'package:flutter/material.dart';

class GestureRecolhido extends StatefulWidget {
  const GestureRecolhido({Key? key}) : super(key: key);

  @override
  State<GestureRecolhido> createState() => _GestureRecolhidoState();
}

class _GestureRecolhidoState extends State<GestureRecolhido> {
  bool select = false;
  @override
  Widget build(BuildContext context) {
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
              color: Color.fromARGB(255, 30, 109, 213),
              borderRadius: BorderRadius.circular(20)),
          alignment: Alignment.topLeft,
          duration: Duration(seconds: 1),
          height: MediaQuery.of(context).size.height / 0.4,
          width: MediaQuery.of(context).size.height / 10.0,
          child: FlutterLogo(
            size: 60,
          ),
        ),
      ),
    );
  }
}
