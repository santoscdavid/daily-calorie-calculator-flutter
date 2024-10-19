import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controller/new_calc_controller.dart';

class HeightRangeSliderWidget extends StatefulWidget {
  const HeightRangeSliderWidget({super.key});

  @override
  State<HeightRangeSliderWidget> createState() =>
      _HeightRangeSliderWidgetState();
}

class _HeightRangeSliderWidgetState extends State<HeightRangeSliderWidget> {
  final newCalcController = Modular.get<NewCalcController>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Observer(builder: (context) {
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
            value: newCalcController.calcModel.height.toDouble(),
            label: '${newCalcController.calcModel.height.round()} cm',
            onChanged: (newValue) {
              newCalcController.setHeight(newValue.toInt());
            },
          ),
          Text(
            'Altura selecionada: ${newCalcController.calcModel.height.round()} cm',
            style: textTheme.labelLarge,
          ),
        ],
      );
    });
  }
}
