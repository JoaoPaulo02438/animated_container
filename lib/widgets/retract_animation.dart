import 'package:animated_container/Components/home/menu/gestureRec.dart';
import 'package:flutter/material.dart';

class RetractAnimation extends StatelessWidget {
  final InkWell retract;
  RetractAnimation({Key? key, required this.retract}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
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
    );
  }
}
