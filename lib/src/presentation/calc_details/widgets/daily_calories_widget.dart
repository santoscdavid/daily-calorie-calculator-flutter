import 'package:flutter/material.dart';

class DailyCaloriesWidget extends StatelessWidget {
  const DailyCaloriesWidget({
    super.key,
    required this.dailyCalories,
  });

  final String dailyCalories;

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
                  "Seu gasto diário de calorias",
                ),
                subtitle: Text(
                  "Com base no seu nível de atividade fisica",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      dailyCalories,
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
