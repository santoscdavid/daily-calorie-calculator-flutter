import 'package:daily_calorie_calculator_flutter/src/shared/enums/gender_enum.dart';
import 'package:daily_calorie_calculator_flutter/src/shared/widgets/appbar_widget.dart';
import 'package:daily_calorie_calculator_flutter/src/shared/widgets/scaffold_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/enums/level_activity_enum.dart';
import '../../shared/enums/objective_enum.dart';
import 'widgets/age_weight_widget.dart';
import 'widgets/gender_selection_widget.dart';
import 'widgets/height_range_slider_widget.dart';
import 'widgets/level_activity_widget.dart';
import 'widgets/objective_widget.dart';

class NewCalcPage extends StatelessWidget {
  const NewCalcPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return DefaultScaffoldWidget(
      appBar: DefaultAppbarWidget(
        hasReturn: true,
        onPressedReturn: redirectToHome,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  "Calculadora de Calorias Diárias",
                  style: textTheme.titleLarge,
                ),
              ),
              const AgeAndWeightWidget(),
              const SizedBox(height: 20),
              const HeightRangeSliderWidget(),
              const SizedBox(height: 20),
              const GenderSelectionWidget(
                genderSelected: GenderEnum.FEMALE,
              ),
              const SizedBox(height: 20),
              const LevelActitityWidget(
                activityLevelSelected: ActivityLevelEnum.LIGHT,
              ),
              const SizedBox(height: 20),
              const ObjectiveWidget(
                objectiveSelected: ObjectiveEnum.LOSS,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void redirectToHome() {
    Modular.to.navigate('/');
  }
}
