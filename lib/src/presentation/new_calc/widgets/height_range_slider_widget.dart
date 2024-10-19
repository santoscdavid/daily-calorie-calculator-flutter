import 'package:flutter/material.dart';

class HeightRangeSliderWidget extends StatefulWidget {
  const HeightRangeSliderWidget({super.key});

  @override
  State<HeightRangeSliderWidget> createState() =>
      _HeightRangeSliderWidgetState();
}

class _HeightRangeSliderWidgetState extends State<HeightRangeSliderWidget> {
  double height = 160.0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Informe sua altura:',
              style: textTheme.titleMedium,
            ),
          ],
        ),
        Slider(
          min: 100,
          max: 220,
          divisions: 120,
          value: height,
          label: '${height.round().round()} cm',
          onChanged: (value) {
            setState(() {
              height = value;
            });
          },
        ),
        Text(
          'Altura selecionada: ${height.round()} cm',
          style: textTheme.labelLarge,
        ),
      ],
    );
  }
}
