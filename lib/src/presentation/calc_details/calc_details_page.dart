import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/widgets/appbar_widget.dart';
import '../../shared/widgets/scaffold_widget.dart';

class CalcDetailsPage extends StatelessWidget {
  const CalcDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return DefaultScaffoldWidget(
      appBar: DefaultAppbarWidget(
        hasReturn: true,
        onPressedReturn: redirectToHome,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                "Calculo de Calorias Diárias",
                style: textTheme.titleLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void redirectToHome() {
    Modular.to.navigate('/');
  }
}
