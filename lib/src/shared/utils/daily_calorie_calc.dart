import 'package:daily_calorie_calculator_flutter/src/domain/enums/level_activity_enum.dart';

import '../../domain/models/calc_model.dart';

double dailyCalorieCalc({
  required CalcModel model,
  required double tbm,
}) {
  switch (model.levelActivity) {
    case ActivityLevelEnum.SEDENTARY:
      return (tbm * 1.2).roundToDouble();
    case ActivityLevelEnum.LIGHT:
      return (tbm * 1.375).roundToDouble();
    case ActivityLevelEnum.MODERATE:
      return (tbm * 1.55).roundToDouble();
    case ActivityLevelEnum.HIGH:
      return (tbm * 1.725).roundToDouble();
  }
}
