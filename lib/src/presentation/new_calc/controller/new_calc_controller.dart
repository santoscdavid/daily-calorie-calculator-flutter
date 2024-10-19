import 'package:mobx/mobx.dart';

import '../../../domain/extensions/calc_model_extension.dart';
import '../../../domain/models/calc_model.dart';
import '../../../shared/enums/gender_enum.dart';
import '../../../shared/enums/level_activity_enum.dart';
import '../../../shared/enums/objective_enum.dart';

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
}
