import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'main_module.dart';
import 'main_widget.dart';
import 'src/core/database/hive_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HiveConfig.init();
  runApp(ModularApp(module: MainModule(), child: const MainWidget()));
}
