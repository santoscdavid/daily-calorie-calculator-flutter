import 'package:flutter/material.dart';

import '../../../shared/widgets/text_with_icon_widget.dart';

class LastResultWidget extends StatelessWidget {
  const LastResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        FittedBox(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 5),
                    Text(
                      "Informações do ultimo registro:",
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
          ),
        ),
        const Column(
          children: [
            TextWithIcon(
              text: "Idade:",
              icon: Icons.calendar_month,
            ),
            TextWithIcon(
              text: "Peso:",
              icon: Icons.monitor_weight,
            ),
            TextWithIcon(
              text: "Altura:",
              icon: Icons.height,
            ),
            TextWithIcon(
              text: "Gênero:",
              icon: Icons.wc,
            ),
          ],
        )
      ],
    );
  }
}
