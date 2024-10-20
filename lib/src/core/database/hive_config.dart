import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'adapters/calc_adapter.dart';
import 'adapters/historic_adapter.dart';

class HiveConfig {
  static Future<void> init() async {
    // Get documents directory directory
    final appDocumentDirectory = await getApplicationDocumentsDirectory();

    // Init hive database
    Hive.init(appDocumentDirectory.path);

    // Register hive adapters
    _registerAdapters();
  }

  static void _registerAdapters() {
    if (!Hive.isAdapterRegistered(HistoricAdapter().typeId)) {
      Hive.registerAdapter(HistoricAdapter());
    }
    if (!Hive.isAdapterRegistered(CalcAdapter().typeId)) {
      Hive.registerAdapter(CalcAdapter());
    }
  }
}

// EWnum to map existing Hive boxes
enum HiveBoxes {
  historicBox('historic_box');

  final String boxName;

  const HiveBoxes(this.boxName);

  Future<Box<E>> getBox<E>() async {
    return await Hive.openBox<E>(boxName);
  }
}
