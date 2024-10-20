import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../domain/models/result_model.dart';
import '../../shared/widgets/appbar_widget.dart';
import '../../shared/widgets/scaffold_widget.dart';
import 'controller/calc_details_controller.dart';
import 'widgets/articles_widget.dart';
import 'widgets/daily_calories_objective_widget.dart';
import 'widgets/daily_calories_widget.dart';
import 'widgets/tmb_widget.dart';

class CalcDetailsPage extends StatefulWidget {
  const CalcDetailsPage({
    super.key,
    required this.resultModel,
  });

  final ResultModel resultModel;

  @override
  State<CalcDetailsPage> createState() => _CalcDetailsPageState();
}

class _CalcDetailsPageState extends State<CalcDetailsPage> {
  @override
  void dispose() {
    Modular.dispose<CalcDetailsController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return DefaultScaffoldWidget(
      appBar: DefaultAppbarWidget(
        hasReturn: true,
        onPressedReturn: redirectToHome,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Resultados:",
                style: textTheme.titleLarge,
              ),
              TmbWidget(
                tbmValue: widget.resultModel.tbmValue.toString(),
              ),
              const SizedBox(height: 10),
              DailyCaloriesWidget(
                dailyCalories: widget.resultModel.dailyCalories.toString(),
              ),
              const SizedBox(height: 10),
              DailyCaloriesObjectiveWidget(
                dailyCaloriesObjective:
                    widget.resultModel.dailyCaloriesObjective.toString(),
              ),
              const SizedBox(height: 10),
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(height: 10),
              ArticlesWidget(
                calcModel: widget.resultModel.calcModel,
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
