import 'package:flutter/material.dart';

class LastResultsChartWidget extends StatelessWidget {
  const LastResultsChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "Ultimos resultados",
                  style: textTheme.titleLarge,
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.chevron_right,
                size: 30,
              ),
            )
          ],
        ),
        Container(
          height: 250,
          color: Colors.blue,
          child: const Center(
            child: Text("Histórico - Line Chart"),
          ),
        ),
      ],
    );
  }
}
