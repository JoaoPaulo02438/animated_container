import 'package:flutter/material.dart';

class WidgetUpperBottons extends StatelessWidget {
  const WidgetUpperBottons({
    Key? key,
    required this.padding,
    required this.string,
    required this.fontSize,
    required this.elevation,
    required this.borderRadius,
    required this.colorString,
    required this.colorBotton,
    required this.splashColor,
    required this.widthMediaQuery,
    required this.heigthMediaQuery,
    required this.onTap,
  }) : super(key: key);

  final EdgeInsetsGeometry padding;
  final String string;
  final double fontSize;
  final double elevation;
  final BorderRadiusGeometry borderRadius;
  final Color colorString;
  final Color colorBotton;
  final Color splashColor;
  final double widthMediaQuery;
  final double heigthMediaQuery;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Material(
        elevation: elevation,
        color: colorBotton,
        borderRadius: borderRadius,
        child: InkWell(
          splashColor: splashColor,
          onTap: onTap,
          child: SizedBox(
            width: widthMediaQuery,
            height: heigthMediaQuery,
            child: Center(
              child: Text(
                string,
                style: TextStyle(
                  color: colorString,
                  fontSize: fontSize,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
