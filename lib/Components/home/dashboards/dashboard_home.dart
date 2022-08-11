import 'package:animated_container/Components/home/dashboards/dash_new_graphic.dart';
import 'package:animated_container/Components/home/dashboards/dash_pie_chart.dart';

import 'package:animated_container/components/home/dashboards/dash_widget.dart';

import 'package:flutter/material.dart';

class DashboardHome extends StatelessWidget {
  const DashboardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          children: [
            //TimeseriesChartExample(),
            DashWidget(),
            SizedBox(width: 10),
            PieChart(),
            SizedBox(width: 10),
            NewGraphic(),
          ],
        ),
      ],
    );
  }
}
