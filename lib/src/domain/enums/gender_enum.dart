// ignore_for_file: constant_identifier_names

enum GenderEnum {
  MALE,
  FEMALE;

  @override
  String toString() {
    switch (this) {
      case GenderEnum.MALE:
        return "Masculino";
      case GenderEnum.FEMALE:
        return "Feminino";
    }
  }
}
