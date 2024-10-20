import 'package:daily_calorie_calculator_flutter/src/shared/widgets/appbar_widget.dart';
import 'package:daily_calorie_calculator_flutter/src/shared/widgets/scaffold_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/widgets/drawer_widget.dart';
import 'controller/new_calc_controller.dart';
import 'widgets/age_weight_widget.dart';
import 'widgets/gender_selection_widget.dart';
import 'widgets/height_range_slider_widget.dart';
import 'widgets/level_activity_widget.dart';
import 'widgets/objective_widget.dart';

class NewCalcPage extends StatefulWidget {
  const NewCalcPage({super.key});

  @override
  State<NewCalcPage> createState() => _NewCalcPageState();
}

class _NewCalcPageState extends State<NewCalcPage> {
  final newCalcController = Modular.get<NewCalcController>();

  @override
  void dispose() {
    Modular.dispose<NewCalcController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;

    return Observer(
      builder: (context) {
        return DefaultScaffoldWidget(
          appBar: const DefaultAppbarWidget(),
          drawerWidget: const DefaultDrawerWidget(),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Calculadora de Calorias Diárias",
                      style: textTheme.titleLarge,
                    ),
                  ),
                  const AgeAndWeightWidget(),
                  const SizedBox(height: 10),
                  const HeightRangeSliderWidget(),
                  const SizedBox(height: 20),
                  const GenderSelectionWidget(),
                  const SizedBox(height: 20),
                  const LevelActitityWidget(),
                  const SizedBox(height: 20),
                  const ObjectiveWidget(),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width / 2,
                        child: ElevatedButton(
                          onPressed: () => newCalcController.calculate(),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(theme.primaryColor),
                          ),
                          child: const Text(
                            'Calcular',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void redirectToHome() {
    Modular.to.navigate('/');
  }
}
