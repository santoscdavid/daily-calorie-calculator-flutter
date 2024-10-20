import '../enums/gender_enum.dart';
import '../enums/level_activity_enum.dart';
import '../enums/objective_enum.dart';

class CalcModel {
  CalcModel({
    required this.weight,
    required this.age,
    required this.gender,
    required this.height,
    required this.levelActivity,
    required this.objective,
  });

  final int weight;
  final int age;
  final GenderEnum gender;
  final int height;
  final ActivityLevelEnum levelActivity;
  final ObjectiveEnum objective;
}
