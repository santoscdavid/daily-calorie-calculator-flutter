// ignore_for_file: constant_identifier_names

enum ObjectiveEnum {
  LOSS,
  GAIN;

  @override
  String toString() {
    switch (this) {
      case ObjectiveEnum.GAIN:
        return "Ganho de peso";
      case ObjectiveEnum.LOSS:
        return "Perda de peso";
    }
  }
}
