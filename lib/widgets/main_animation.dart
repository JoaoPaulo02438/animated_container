import 'package:animated_container/Components/home/menu/gesturePri.dart';
import 'package:flutter/material.dart';

class MainAnimation extends StatelessWidget {
  final InkWell main;

  MainAnimation({
    Key? key,
    required this.main,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
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
    );
  }
}
