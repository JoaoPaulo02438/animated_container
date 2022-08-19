import 'package:flutter/material.dart';

class WidgetPaginatedTable extends StatelessWidget {
  const WidgetPaginatedTable({
    Key? key,
    this.width,
    this.height,
    required this.color,
    this.onTap,
    required this.source,
    required this.columns1,
    required this.columns2,
    required this.columns3,
    required this.columns4,
    required this.columns5,
    required this.columns6,
    required this.columns7,
    required this.dataRowHeight,
    this.arrowHeadColor,
    required this.columnSpacing,
    required this.horizontalMargin,
    required this.rowsPerPage,
    required this.showCheckboxColumn,
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color color;
  final GestureTapCallback? onTap;
  final DataTableSource source;
  final DataColumn columns1;
  final DataColumn columns2;
  final DataColumn columns3;
  final DataColumn columns4;
  final DataColumn columns5;
  final DataColumn columns6;
  final DataColumn columns7;
  final double dataRowHeight;
  final Color? arrowHeadColor;
  final double columnSpacing;
  final double horizontalMargin;
  final int rowsPerPage;
  final bool showCheckboxColumn;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: width,
        height: height,
        child: ListView(
          children: [
            SizedBox(
              height: height,
            ),
            Container(
              color: color,
              child: InkWell(
                onTap: onTap,
                child: PaginatedDataTable(
                  source: source,
                  //header: const Text('Pesquisas'),
                  columns: [
                    columns1,
                    columns2,
                    columns3,
                    columns4,
                    columns5,
                    columns6,
                    columns7,
                  ],
                  dataRowHeight: dataRowHeight,
                  arrowHeadColor: arrowHeadColor,
                  columnSpacing: columnSpacing,
                  horizontalMargin: horizontalMargin,
                  rowsPerPage: rowsPerPage,
                  showCheckboxColumn: showCheckboxColumn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
