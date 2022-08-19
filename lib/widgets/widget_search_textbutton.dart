import 'package:flutter/material.dart';

class WidgetSearchTextButton extends StatelessWidget {
  const WidgetSearchTextButton({
    Key? key,
    this.backgroundColor,
    required this.onPressed,
    required this.nameButton,
    this.fontWeight,
    this.fontSize,
    this.color,
  }) : super(key: key);

  final MaterialStateProperty<Color?>? backgroundColor;
  final VoidCallback onPressed;
  final String nameButton;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: backgroundColor,
        ),
        onPressed: onPressed,
        child: Center(
          child: Text(
            nameButton,
            style: TextStyle(
              fontWeight: fontWeight,
              fontSize: fontSize,
              color: color,
            ),
          ),
        ),
      ),
    );
  }
}
