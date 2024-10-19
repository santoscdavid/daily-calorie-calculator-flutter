import 'package:daily_calorie_calculator_flutter/src/shared/enums/gender_enum.dart';
import 'package:flutter/material.dart';

import '../../../shared/widgets/custom_outlined_button.dart';

class GenderSelectionWidget extends StatelessWidget {
  const GenderSelectionWidget({
    super.key,
    required this.genderSelected,
  });

  final GenderEnum genderSelected;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

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
                onPressed: () {},
                isSelected: genderSelected == GenderEnum.MALE,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.male,
                      color: genderSelected == GenderEnum.MALE
                          ? Colors.white
                          : null,
                    ),
                    Text(
                      GenderEnum.MALE.toString(),
                      style: genderSelected == GenderEnum.MALE
                          ? const TextStyle(color: Colors.white)
                          : null,
                    ),
                  ],
                ),
              ),
              CustomOutlinedButton(
                onPressed: () {},
                isSelected: genderSelected == GenderEnum.FEMALE,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.female,
                      color: genderSelected == GenderEnum.FEMALE
                          ? Colors.white
                          : null,
                    ),
                    Text(
                      GenderEnum.FEMALE.toString(),
                      style: genderSelected == GenderEnum.FEMALE
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
