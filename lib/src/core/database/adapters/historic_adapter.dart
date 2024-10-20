import 'package:hive/hive.dart';

import '../../../domain/models/result_model.dart';

class HistoricAdapter extends TypeAdapter<ResultModel> {
  @override
  final typeId = 1;

  @override
  ResultModel read(BinaryReader reader) {
    return ResultModel(
      calcModel: reader.read(),
      createdOn: DateTime.parse(reader.readString()),
      tbmValue: reader.readDouble(),
      dailyCalories: reader.readDouble(),
      dailyCaloriesObjective: reader.readDouble(),
    );
  }

  @override
  void write(BinaryWriter writer, ResultModel obj) {
    writer.write(obj.calcModel);
    writer.writeString(obj.createdOn.toString());
    writer.writeDouble(obj.tbmValue);
    writer.writeDouble(obj.dailyCalories);
    writer.writeDouble(obj.dailyCaloriesObjective);
  }
}
