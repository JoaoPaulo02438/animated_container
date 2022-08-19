// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors_in_immutables
// @dart=2.9
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DashChartsNew extends StatefulWidget {
  @override
  _DashChartsNewState createState() => _DashChartsNewState();
}

class _DashChartsNewState extends State<DashChartsNew> {
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Colors.grey,
      radius: Radius.circular(10),
      strokeWidth: 2,
      dashPattern: [
        5,
        5,
      ],
      child: Container(
        width: MediaQuery.of(context).size.width * .05,
        height: MediaQuery.of(context).size.height * .25,
        decoration: BoxDecoration(
          color: Colors.transparent,
          //color: const Color.fromRGBO(255, 255, 255, 1),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3,
              blurRadius: 3,
              offset: const Offset(1, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotatedBox(
              quarterTurns: -1,
              child: Text(
                'novo gráfico',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add_circle_outline),
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
