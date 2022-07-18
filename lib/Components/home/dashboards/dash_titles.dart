import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DashTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          getTextStyles: (value) => const TextStyle(
            color: Color.fromARGB(255, 18, 120, 216),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 2:
                return 'MAR';
              case 5:
                return 'JUN';
              case 8:
                return 'SEP';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color.fromARGB(255, 18, 120, 216),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 1:
                return ' 10k';
              case 3:
                return ' 30k';
              case 5:
                return ' 50k';
            }
            return '';
          },
          reservedSize: 30,
          margin: 12,
        ),
      );
}
