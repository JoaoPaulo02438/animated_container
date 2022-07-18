// ignore_for_file: prefer_const_constructors
import 'package:animated_container/components/home/dashboards/dash_widget.dart';
import 'package:flutter/material.dart';

class DashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        color: Color.fromRGBO(239, 239, 239, 1),
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: DashWidget(),
        ),
      );
}
