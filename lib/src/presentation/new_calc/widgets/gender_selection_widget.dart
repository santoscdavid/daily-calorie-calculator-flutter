import 'package:flutter/material.dart';

class GenderSelectionWidget extends StatelessWidget {
  const GenderSelectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Informe seu gênero:",
              style: textTheme.titleLarge,
            ),
          ],
        ),
        const SizedBox(height: 10),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                style: ButtonStyle(
                  side: MaterialStatePropertyAll(
                    BorderSide(color: theme.primaryColor),
                  ),
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.all(10),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.male),
                    Text("Masculino"),
                  ],
                ),
              ),
              OutlinedButton(
                style: ButtonStyle(
                  side: MaterialStatePropertyAll(
                    BorderSide(color: theme.primaryColor),
                  ),
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.all(10),
                  ),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.female),
                    Text("Feminino"),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
