import 'package:flutter_modular/flutter_modular.dart';

import 'src/presentation/calc_details/calc_details_page.dart';
import 'src/presentation/historic/historic_page.dart';
import 'src/presentation/home/home_page.dart';
import 'src/presentation/new_calc/controller/new_calc_controller.dart';
import 'src/presentation/new_calc/new_calc_page.dart';

class MainModule extends Module {
  @override
  void binds(i) {
    i.addSingleton<NewCalcController>(NewCalcController.new);
  }

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => const HomePage(),
      transition: TransitionType.leftToRight,
    );
    r.child('/historic', child: (context) => const HistoricPage());
    r.child(
      '/new-calc',
      child: (context) => const NewCalcPage(),
      transition: TransitionType.leftToRight,
    );
    r.child(
      '/calc-details',
      child: (context) => const CalcDetailsPage(),
    );
  }
}
