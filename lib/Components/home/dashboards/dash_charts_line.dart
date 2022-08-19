import 'dart:math';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

/// Data class to visualize.
class _SalesData {
  final int year;
  final int sales;

  _SalesData(this.year, this.sales);
  // Returns Jan.1st of that year as date.
  DateTime get date => DateTime(this.year);
}

/// Generate some random data.
List<_SalesData> _genRandData() {
  final random = Random();
  // Returns an increasing series with some fluctuations.
  return [
    for (int i = 2005; i < 2020; ++i)
      _SalesData(i, (i - 2000) * 40 + random.nextInt(100)),
  ];
}

class DashChartsLine extends StatefulWidget {
  const DashChartsLine({Key? key}) : super(key: key);

  @override
  _DashChartsLineState createState() => _DashChartsLineState();
}

class _DashChartsLineState extends State<DashChartsLine> {
  // Chart configs.
  bool _animate = true;
  bool _defaultInteractions = true;
  bool _includeArea = true;
  bool _includePoints = true;
  bool _stacked = true;

  // Data to render.
  late List<_SalesData> _series1, _series2;

  @override
  void initState() {
    super.initState();
    this._series1 = _genRandData();
    this._series2 = _genRandData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          SizedBox(
            height: 150,
            child: charts.TimeSeriesChart(
              /*seriesList=*/ [
                charts.Series<_SalesData, DateTime>(
                  id: 'Sales-1',
                  colorFn: (_, __) =>
                      charts.MaterialPalette.purple.shadeDefault,
                  domainFn: (_SalesData sales, _) => sales.date,
                  measureFn: (_SalesData sales, _) => sales.sales,
                  data: this._series1,
                ),
                charts.Series<_SalesData, DateTime>(
                  id: 'Sales-2',
                  colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
                  domainFn: (_SalesData sales, _) => sales.date,
                  measureFn: (_SalesData sales, _) => sales.sales,
                  data: this._series2,
                ),
              ],
              defaultInteractions: this._defaultInteractions,
              defaultRenderer: charts.LineRendererConfig(
                includePoints: this._includePoints,
                includeArea: this._includeArea,
                stacked: this._stacked,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
