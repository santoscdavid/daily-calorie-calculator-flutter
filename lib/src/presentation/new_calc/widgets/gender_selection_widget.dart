import 'package:daily_calorie_calculator_flutter/src/shared/enums/gender_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/widgets/custom_outlined_button.dart';
import '../controller/new_calc_controller.dart';

class GenderSelectionWidget extends StatelessWidget {
  const GenderSelectionWidget({
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
                  "Informe seu gênero:",
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
                    onPressed: () =>
                        newCalcController.setGender(GenderEnum.MALE),
                    isSelected:
                        newCalcController.calcModel.gender == GenderEnum.MALE,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.male,
                          color: newCalcController.calcModel.gender ==
                                  GenderEnum.MALE
                              ? Colors.white
                              : null,
                        ),
                        Text(
                          GenderEnum.MALE.toString(),
                          style: newCalcController.calcModel.gender ==
                                  GenderEnum.MALE
                              ? const TextStyle(color: Colors.white)
                              : null,
                        ),
                      ],
                    ),
                  ),
                  CustomOutlinedButton(
                    onPressed: () =>
                        newCalcController.setGender(GenderEnum.FEMALE),
                    isSelected:
                        newCalcController.calcModel.gender == GenderEnum.FEMALE,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.female,
                          color: newCalcController.calcModel.gender ==
                                  GenderEnum.FEMALE
                              ? Colors.white
                              : null,
                        ),
                        Text(
                          GenderEnum.FEMALE.toString(),
                          style: newCalcController.calcModel.gender ==
                                  GenderEnum.FEMALE
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
