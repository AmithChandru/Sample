import 'package:flutter/material.dart';
import 'package:foodboard/Screens/chart.dart';
import 'package:foodboard/Screens/chart_model.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class chartScreen extends StatelessWidget {

  final List<itemQuantityModel> data = [
    itemQuantityModel(
      foodName: "PURIFIED DRINKING WATER",
      numberSold: 2358,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    itemQuantityModel(
      foodName: "RASAM",
      numberSold: 1194,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    itemQuantityModel(
      foodName: "PARCEL CONTAINER BOX",
      numberSold: 1061,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    itemQuantityModel(
      foodName: "PARCEL CHARGES",
      numberSold: 710,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    itemQuantityModel(
      foodName: "Z CHICKEN DUM BIRIYANI",
      numberSold: 690,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    itemQuantityModel(
      foodName: "SOFT DRINKS",
      numberSold: 653,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    itemQuantityModel(
      foodName: "ROTI",
      numberSold: 437,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    itemQuantityModel(
      foodName: "Z PHULKA",
      numberSold: 431,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Most sold item"),
      ),
      body: Center(
          child: foodChart(
            data: data,
          )
      ),
    );
  }
}