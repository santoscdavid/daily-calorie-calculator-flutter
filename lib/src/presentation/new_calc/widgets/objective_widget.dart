import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/enums/objective_enum.dart';
import '../../../shared/widgets/custom_outlined_button.dart';
import '../controller/new_calc_controller.dart';

class ObjectiveWidget extends StatelessWidget {
  const ObjectiveWidget({
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
                  "Informe seu objetivo com atividade fisica:",
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
                    isSelected: newCalcController.calcModel.objective ==
                        ObjectiveEnum.GAIN,
                    onPressed: () =>
                        newCalcController.setObjective(ObjectiveEnum.GAIN),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ObjectiveEnum.GAIN.toString(),
                          style: newCalcController.calcModel.objective ==
                                  ObjectiveEnum.GAIN
                              ? const TextStyle(color: Colors.white)
                              : null,
                        ),
                      ],
                    ),
                  ),
                  CustomOutlinedButton(
                    isSelected: newCalcController.calcModel.objective ==
                        ObjectiveEnum.LOSS,
                    onPressed: () =>
                        newCalcController.setObjective(ObjectiveEnum.LOSS),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ObjectiveEnum.LOSS.toString(),
                          style: newCalcController.calcModel.objective ==
                                  ObjectiveEnum.LOSS
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
