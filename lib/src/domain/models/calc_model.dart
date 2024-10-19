import '../../shared/enums/gender_enum.dart';
import '../../shared/enums/level_activity_enum.dart';
import '../../shared/enums/objective_enum.dart';

class CalcModel {
  CalcModel({
    required this.weight,
    required this.age,
    required this.gender,
    required this.height,
    required this.levelActivity,
    required this.objective,
    this.createdOn,
  });

  final int weight;
  final int age;
  final GenderEnum gender;
  final int height;
  final ActivityLevelEnum levelActivity;
  final ObjectiveEnum objective;
  final DateTime? createdOn;
}
