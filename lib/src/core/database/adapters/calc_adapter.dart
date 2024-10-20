import 'package:hive/hive.dart';

import '../../../domain/enums/gender_enum.dart';
import '../../../domain/enums/level_activity_enum.dart';
import '../../../domain/enums/objective_enum.dart';
import '../../../domain/models/calc_model.dart';

class CalcAdapter extends TypeAdapter<CalcModel> {
  @override
  final typeId = 2;

  @override
  CalcModel read(BinaryReader reader) {
    return CalcModel(
      weight: reader.readInt(),
      age: reader.readInt(),
      gender: GenderEnum.values[reader.readInt()],
      height: reader.readInt(),
      levelActivity: ActivityLevelEnum.values[reader.readInt()],
      objective: ObjectiveEnum.values[reader.readInt()],
    );
  }

  @override
  void write(BinaryWriter writer, CalcModel obj) {
    writer.writeInt(obj.weight);
    writer.writeInt(obj.age);
    writer.writeInt(obj.gender.index);
    writer.writeInt(obj.height);
    writer.writeInt(obj.levelActivity.index);
    writer.writeInt(obj.objective.index);
  }
}
