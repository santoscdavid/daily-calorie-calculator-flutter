// ignore_for_file: constant_identifier_names

enum ActivityLevelEnum {
  SEDENTARY,
  LIGHT,
  MODERATE,
  HIGH;

  @override
  String toString() {
    switch (this) {
      case ActivityLevelEnum.SEDENTARY:
        return "Sedentário";
      case ActivityLevelEnum.LIGHT:
        return "Leve";
      case ActivityLevelEnum.MODERATE:
        return "Moderado";
      case ActivityLevelEnum.HIGH:
        return "Alto";
    }
  }
}
