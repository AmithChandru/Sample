import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:foodboard/Screens/chart_model.dart';

class foodChart extends StatelessWidget {
  final List<itemQuantityModel> data;

  foodChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<itemQuantityModel, String>> series = [
      charts.Series(
          id: "Subscribers",
          data: data,
          domainFn: (itemQuantityModel series, _) => series.foodName,
          measureFn: (itemQuantityModel series, _) => series.numberSold,
          colorFn: (itemQuantityModel series, _) => series.barColor
      )
    ];

    return Container(
      height: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                "Most sold item",
              ),
              Expanded(
                child: charts.BarChart(series, animate: true),
              )
            ],
          ),
        ),
      ),
    );
  }
}