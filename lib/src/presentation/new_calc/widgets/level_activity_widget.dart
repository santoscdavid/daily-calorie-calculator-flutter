import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/enums/level_activity_enum.dart';
import '../../../shared/widgets/custom_outlined_button.dart';
import '../controller/new_calc_controller.dart';

class LevelActitityWidget extends StatelessWidget {
  const LevelActitityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final newCalcController = Modular.get<NewCalcController>();
    final textTheme = Theme.of(context).textTheme;

    return Observer(
      builder: (context) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Informe seu nivel de atividade física:",
                  style: textTheme.titleMedium,
                ),
              ],
            ),
            const SizedBox(height: 10),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomOutlinedButton(
                    isSelected: newCalcController.calcModel.levelActivity ==
                        ActivityLevelEnum.SEDENTARY,
                    onPressed: () => newCalcController
                        .setLevelActivity(ActivityLevelEnum.SEDENTARY),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ActivityLevelEnum.SEDENTARY.toString(),
                          style: newCalcController.calcModel.levelActivity ==
                                  ActivityLevelEnum.SEDENTARY
                              ? const TextStyle(color: Colors.white)
                              : null,
                        ),
                      ],
                    ),
                  ),
                  CustomOutlinedButton(
                    isSelected: newCalcController.calcModel.levelActivity ==
                        ActivityLevelEnum.LIGHT,
                    onPressed: () => newCalcController
                        .setLevelActivity(ActivityLevelEnum.LIGHT),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ActivityLevelEnum.LIGHT.toString(),
                          style: newCalcController.calcModel.levelActivity ==
                                  ActivityLevelEnum.LIGHT
                              ? const TextStyle(color: Colors.white)
                              : null,
                        ),
                      ],
                    ),
                  ),
                  CustomOutlinedButton(
                    isSelected: newCalcController.calcModel.levelActivity ==
                        ActivityLevelEnum.MODERATE,
                    onPressed: () => newCalcController
                        .setLevelActivity(ActivityLevelEnum.MODERATE),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ActivityLevelEnum.MODERATE.toString(),
                          style: newCalcController.calcModel.levelActivity ==
                                  ActivityLevelEnum.MODERATE
                              ? const TextStyle(color: Colors.white)
                              : null,
                        ),
                      ],
                    ),
                  ),
                  CustomOutlinedButton(
                    isSelected: newCalcController.calcModel.levelActivity ==
                        ActivityLevelEnum.HIGH,
                    onPressed: () => newCalcController
                        .setLevelActivity(ActivityLevelEnum.HIGH),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ActivityLevelEnum.HIGH.toString(),
                          style: newCalcController.calcModel.levelActivity ==
                                  ActivityLevelEnum.HIGH
                              ? const TextStyle(color: Colors.white)
                              : null,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
