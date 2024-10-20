import 'package:flutter/material.dart';

class DailyCaloriesObjectiveWidget extends StatelessWidget {
  const DailyCaloriesObjectiveWidget({
    super.key,
    required this.dailyCaloriesObjective,
  });

  final String dailyCaloriesObjective;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                title: Text(
                  "Seu consumo de calorias recomendado",
                ),
                subtitle: Text(
                  "Com base no seu objetivo esse é uma quantidade de calorias recomendado",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      dailyCaloriesObjective,
                      style: textTheme.labelLarge,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
