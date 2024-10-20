import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class NewCalcFloatingButtonWidget extends StatelessWidget {
  const NewCalcFloatingButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return FloatingActionButton.extended(
      backgroundColor: theme.primaryColor,
      onPressed: () => Modular.to.navigate('/new-calc'),
      icon: const Icon(Icons.add),
      label: const Text("Novo teste"),
    );
  }
}
