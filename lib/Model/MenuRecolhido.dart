import 'package:animated_container/Components/Home/container/retractContainer.dart';
import 'package:flutter/material.dart';

class MenuRecolhido extends StatelessWidget {
  final Widget? child;
  final InkWell? inkwell;

  const MenuRecolhido({Key? key, this.inkwell, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
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
          child: RetractContainer(),
        ),
      ),
    );
  }
}
