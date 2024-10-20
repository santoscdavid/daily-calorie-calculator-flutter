import '../enums/gender_enum.dart';
import '../enums/level_activity_enum.dart';
import '../enums/objective_enum.dart';
import '../models/calc_model.dart';

extension CalcModelExtension on CalcModel {
  CalcModel copyWith({
    int? weight,
    int? age,
    GenderEnum? gender,
    int? height,
    ActivityLevelEnum? levelActivity,
    ObjectiveEnum? objective,
  }) {
    return CalcModel(
      weight: weight ?? this.weight,
      age: age ?? this.age,
      gender: gender ?? this.gender,
      height: height ?? this.height,
      levelActivity: levelActivity ?? this.levelActivity,
      objective: objective ?? this.objective,
    );
  }
}
