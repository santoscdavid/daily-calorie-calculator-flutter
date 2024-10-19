import 'package:flutter/material.dart';

class AgeAndWeightWidget extends StatefulWidget {
  const AgeAndWeightWidget({super.key});

  @override
  State<AgeAndWeightWidget> createState() => _AgeAndWeightWidgetState();
}

class _AgeAndWeightWidgetState extends State<AgeAndWeightWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CardCounterWidget(
          title: "Idade",
          subtitle: "Informe sua idade atual",
          counter: 10,
          icon: Icons.calendar_month,
          decrementFunc: () {},
          incrementFunc: () {},
        ),
        CardCounterWidget(
          title: "Peso",
          subtitle: "Informe seu peso em KG atual",
          isWeightCard: true,
          counter: 10,
          icon: Icons.fitness_center,
          decrementFunc: () {},
          incrementFunc: () {},
        ),
      ],
    );
  }
}

class CardCounterWidget extends StatelessWidget {
  const CardCounterWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.counter,
    this.icon,
    this.incrementFunc,
    this.decrementFunc,
    this.isWeightCard = false,
  });

  final String title;
  final String subtitle;
  final int counter;
  final IconData? icon;
  final void Function()? decrementFunc;
  final void Function()? incrementFunc;
  final bool isWeightCard;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.2,
      child: Card(
        child: Column(
          children: [
            ListTile(
              title: Text(title),
              subtitle: Text(subtitle),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  counter.toString(),
                  style: textTheme.titleLarge,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: decrementFunc,
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: incrementFunc,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
