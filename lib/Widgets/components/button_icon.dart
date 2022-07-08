import 'package:flutter/material.dart';

class buttonIcon extends StatefulWidget {
  Icon icon;
  Color color;
  int size;
  buttonIcon({
    Key? key,
    required this.icon,
    required this.color,
    required this.size,
  }) : super(key: key);

  @override
  State<buttonIcon> createState() => _buttonIconState();
}

class _buttonIconState extends State<buttonIcon> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(
              Icons.logo_dev,
              color: Colors.white,
              size: 40,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.login,
              color: Colors.white,
              size: 40,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
