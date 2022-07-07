import 'package:flutter/material.dart';

class GesturePrincipal extends StatefulWidget {
  const GesturePrincipal({Key? key}) : super(key: key);

  @override
  State<GesturePrincipal> createState() => _GesturePrincipalState();
}

class _GesturePrincipalState extends State<GesturePrincipal> {
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
              color: Color.fromARGB(255, 143, 5, 12),
              borderRadius: BorderRadius.circular(20)),
          alignment: Alignment.topCenter,
          duration: Duration(seconds: 1),
          height: MediaQuery.of(context).size.height / 0.9,
          width: MediaQuery.of(context).size.height / 3.0,
          child: FlutterLogo(
            size: 75,
          ),
        ),
      ),
    );
  }
}
