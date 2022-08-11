// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChart extends StatefulWidget {
  const PieChart({Key? key}) : super(key: key);

  @override
  _PieChartState createState() => _PieChartState();
}

class _PieChartState extends State<PieChart> {
  late List<GDPData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * .25,
        height: MediaQuery.of(context).size.height * .25,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 255, 255, 1),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 3,
              offset: const Offset(1, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: SfCircularChart(
          legend: Legend(
              isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
          tooltipBehavior: _tooltipBehavior,
          series: <CircularSeries>[
            DoughnutSeries<GDPData, String>(
              dataSource: _chartData,
              xValueMapper: (GDPData data, _) => data.continent,
              yValueMapper: (GDPData data, _) => data.gdp,
              dataLabelSettings: const DataLabelSettings(isVisible: false),
              enableTooltip: true,
            ),
          ],
        ));
  }

  List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('Visita', 200),
      GDPData('Treinamento', 150),
      GDPData('Trocar máquina stone', 50),
      GDPData('Atualizar app', 50),
    ];
    return chartData;
  }
}

class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final int gdp;
}
