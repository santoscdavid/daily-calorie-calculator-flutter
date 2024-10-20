import 'package:daily_calorie_calculator_flutter/src/domain/models/calc_model.dart';

class ResultModel {
  ResultModel({
    required this.createdOn,
    required this.calcModel,
    required this.tbmValue,
    required this.dailyCalories,
    required this.dailyCaloriesObjective,
  });

  final DateTime createdOn;
  final CalcModel calcModel;
  final double tbmValue;
  final double dailyCalories;
  final double dailyCaloriesObjective;
}
