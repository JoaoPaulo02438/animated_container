import 'package:flutter/material.dart';

class WidgetCircleAvatar extends StatelessWidget {
  final Color color;
  String? src;

  WidgetCircleAvatar({
    Key? key,
    this.color = Colors.blue,
    this.src,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: color,
      child: Image.network('src'),
    );
  }
}
