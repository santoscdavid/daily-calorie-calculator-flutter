import 'package:flutter/material.dart';

import '../../../shared/enums/objective_enum.dart';
import '../../../shared/widgets/custom_outlined_button.dart';

class ObjectiveWidget extends StatelessWidget {
  const ObjectiveWidget({
    super.key,
    required this.objectiveSelected,
  });

  final ObjectiveEnum objectiveSelected;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

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
                isSelected: objectiveSelected == ObjectiveEnum.GAIN,
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ObjectiveEnum.GAIN.toString(),
                      style: objectiveSelected == ObjectiveEnum.GAIN
                          ? const TextStyle(color: Colors.white)
                          : null,
                    ),
                  ],
                ),
              ),
              CustomOutlinedButton(
                isSelected: objectiveSelected == ObjectiveEnum.LOSS,
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ObjectiveEnum.LOSS.toString(),
                      style: objectiveSelected == ObjectiveEnum.LOSS
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
  }
}
