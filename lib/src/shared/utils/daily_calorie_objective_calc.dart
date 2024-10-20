import 'package:daily_calorie_calculator_flutter/src/domain/enums/objective_enum.dart';

import '../../domain/models/calc_model.dart';

double dailyCalorieObjectiveCalc({
  required CalcModel model,
  required double calories,
}) {
  switch (model.objective) {
    case ObjectiveEnum.LOSS:
      return (calories - (calories * 0.20)).roundToDouble();
    case ObjectiveEnum.GAIN:
      return (calories + (calories * 0.15)).roundToDouble();
  }
}
