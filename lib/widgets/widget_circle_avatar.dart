import 'package:flutter/material.dart';

class WidgetCircleAvatar extends StatelessWidget {
  final Color color;
  final double radius;
  final ImageProvider? backgroundImage;

  WidgetCircleAvatar({
    Key? key,
    required this.color,
    required this.radius,
    required this.backgroundImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: CircleAvatar(
        backgroundImage: backgroundImage,
        backgroundColor: color,
        radius: radius,
      ),
    );
  }
}
