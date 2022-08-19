import 'package:animated_container/Components/Home/container/mainContainer.dart';
import 'package:flutter/material.dart';

class MenuPrincipal extends StatelessWidget {
  final Widget? child;
  final InkWell? inkwell;

  const MenuPrincipal({
    Key? key,
    this.child,
    this.inkwell,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
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
          child: MainContainer(),
        ),
      ),
    );
  }
}
