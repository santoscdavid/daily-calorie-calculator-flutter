import 'package:flutter/material.dart';

import '../../../shared/enums/level_activity_enum.dart';
import '../../../shared/widgets/custom_outlined_button.dart';

class LevelActitityWidget extends StatelessWidget {
  const LevelActitityWidget({
    super.key,
    required this.activityLevelSelected,
  });

  final ActivityLevelEnum activityLevelSelected;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

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
                isSelected:
                    activityLevelSelected == ActivityLevelEnum.SEDENTARY,
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ActivityLevelEnum.SEDENTARY.toString(),
                      style:
                          activityLevelSelected == ActivityLevelEnum.SEDENTARY
                              ? const TextStyle(color: Colors.white)
                              : null,
                    ),
                  ],
                ),
              ),
              CustomOutlinedButton(
                isSelected: activityLevelSelected == ActivityLevelEnum.LIGHT,
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ActivityLevelEnum.LIGHT.toString(),
                      style: activityLevelSelected == ActivityLevelEnum.LIGHT
                          ? const TextStyle(color: Colors.white)
                          : null,
                    ),
                  ],
                ),
              ),
              CustomOutlinedButton(
                isSelected: activityLevelSelected == ActivityLevelEnum.MODERATE,
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ActivityLevelEnum.MODERATE.toString(),
                      style: activityLevelSelected == ActivityLevelEnum.MODERATE
                          ? const TextStyle(color: Colors.white)
                          : null,
                    ),
                  ],
                ),
              ),
              CustomOutlinedButton(
                isSelected: activityLevelSelected == ActivityLevelEnum.HIGH,
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ActivityLevelEnum.HIGH.toString(),
                      style: activityLevelSelected == ActivityLevelEnum.HIGH
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
