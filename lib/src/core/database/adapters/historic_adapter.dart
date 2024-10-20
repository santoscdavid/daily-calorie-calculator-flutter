import 'package:hive/hive.dart';

class HistoricAdapter extends TypeAdapter<String> {
  @override
  final typeId = 1;

  @override
  String read(BinaryReader reader) {
    return reader.readString();
  }

  @override
  void write(BinaryWriter writer, String obj) {
    writer.writeString(obj);
  }
}
