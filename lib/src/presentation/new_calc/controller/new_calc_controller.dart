import 'dart:developer';

import 'package:daily_calorie_calculator_flutter/src/domain/models/result_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../../domain/extensions/calc_model_extension.dart';
import '../../../domain/models/calc_model.dart';
import '../../../domain/enums/gender_enum.dart';
import '../../../domain/enums/level_activity_enum.dart';
import '../../../domain/enums/objective_enum.dart';
import '../../../shared/utils/tmb_calc.dart';
import '../../../shared/utils/daily_calorie_calc.dart';
import '../../../shared/utils/daily_calorie_objective_calc.dart';

part 'new_calc_controller.g.dart';

class NewCalcController = NewCalcControllerBase with _$NewCalcController;

abstract class NewCalcControllerBase with Store {
  @observable
  CalcModel calcModel = CalcModel(
    age: 20,
    height: 160,
    weight: 60,
    gender: GenderEnum.MALE,
    levelActivity: ActivityLevelEnum.MODERATE,
    objective: ObjectiveEnum.GAIN,
  );

  @action
  void incrementAge() {
    int newValue = calcModel.age + 1;
    calcModel = calcModel.copyWith(age: newValue);
  }

  @action
  void decrementAge() {
    int newValue = calcModel.age - 1;
    calcModel = calcModel.copyWith(age: newValue);
  }

  @action
  void incrementWeight() {
    int newValue = calcModel.weight + 1;
    calcModel = calcModel.copyWith(weight: newValue);
  }

  @action
  void decrementWeight() {
    int newValue = calcModel.weight - 1;
    calcModel = calcModel.copyWith(weight: newValue);
  }

  @action
  void setHeight(int newValue) {
    calcModel = calcModel.copyWith(height: newValue);
  }

  @action
  void setGender(GenderEnum newValue) {
    calcModel = calcModel.copyWith(gender: newValue);
  }

  @action
  void setLevelActivity(ActivityLevelEnum newValue) {
    calcModel = calcModel.copyWith(levelActivity: newValue);
  }

  @action
  void setObjective(ObjectiveEnum newValue) {
    calcModel = calcModel.copyWith(objective: newValue);
  }

  void calculate() {
    double tbmResult = tmbCalc(calcModel);
    double dailyCalories = dailyCalorieCalc(model: calcModel, tbm: tbmResult);
    double dailyCaloriesObjective =
        dailyCalorieObjectiveCalc(model: calcModel, calories: dailyCalories);

    log(tbmResult.toString());
    log(dailyCalories.toString());
    log(dailyCaloriesObjective.toString());

    final result = ResultModel(
      createdOn: DateTime.now(),
      calcModel: calcModel,
      tbmValue: tbmResult,
      dailyCalories: dailyCalories,
      dailyCaloriesObjective: dailyCaloriesObjective,
    );

    Modular.to.navigate('calc-details', arguments: result);
  }
}
