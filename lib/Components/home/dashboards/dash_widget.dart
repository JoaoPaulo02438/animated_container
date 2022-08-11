// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:animated_container/components/home/dashboards/dash_titles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DashWidget extends StatelessWidget {
  final List<Color> gradientColors = [
    Color.fromARGB(246, 98, 102, 98),
    Color.fromARGB(255, 230, 21, 6),
  ];

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .25,
            height: MediaQuery.of(context).size.height * .25,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(1, 1),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Flexible(
              flex: 20,
              child: LineChart(
                LineChartData(
                  minX: 0,
                  maxX: 12,
                  minY: 0,
                  maxY: 7,
                  titlesData: DashTitles.getTitleData(),
                  gridData: FlGridData(
                    show: true,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: Color.fromARGB(255, 255, 255, 255),
                        strokeWidth: 1,
                      );
                    },
                    drawVerticalLine: true,
                    getDrawingVerticalLine: (value) {
                      return FlLine(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        strokeWidth: 1,
                      );
                    },
                  ),
                  borderData: FlBorderData(
                    show: true,
                    border: Border.all(
                        color: Color.fromRGBO(255, 255, 255, 1), width: 0),
                  ),
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        FlSpot(0, 3),
                        FlSpot(2.6, 2),
                        FlSpot(4.9, 5),
                        FlSpot(6.8, 2.5),
                        FlSpot(8, 4),
                        FlSpot(9.5, 3),
                        FlSpot(11, 4),
                      ],
                      isCurved: true,
                      colors: gradientColors,
                      barWidth: 5,
                      // dotData: FlDotData(show: false),
                      belowBarData: BarAreaData(
                        show: true,
                        colors: gradientColors
                            .map((color) => color.withOpacity(0.4))
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
}
