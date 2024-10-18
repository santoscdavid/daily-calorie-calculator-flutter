import 'package:daily_calorie_calculator_flutter/src/presentation/home/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MainModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const MyHomePage());
  }
}
