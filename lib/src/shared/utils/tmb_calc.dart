import '../../domain/models/calc_model.dart';
import '../../domain/enums/gender_enum.dart';

///
/// Calculates the basal metabolic rate
///
double tmbCalc(CalcModel model) {
  switch (model.gender) {
    case GenderEnum.MALE:
      return (88.362 +
              (13.397 * model.weight) +
              (4.799 * model.height) -
              (5.677 * model.age))
          .roundToDouble();
    case GenderEnum.FEMALE:
      return (447.593 +
              (9.247 * model.weight) +
              (3.098 * model.height) -
              (4.330 * model.age))
          .roundToDouble();
  }
}
