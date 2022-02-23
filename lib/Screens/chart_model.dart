import 'package:flutter/foundation.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class itemQuantityModel {
  final String foodName;
  final int numberSold;
  final charts.Color barColor;

  itemQuantityModel(
      {
        required this.foodName,
        required this.numberSold,
        required this.barColor
      }
      );
}