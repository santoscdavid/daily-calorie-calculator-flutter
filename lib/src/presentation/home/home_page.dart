import 'package:flutter/material.dart';

import '../../shared/widgets/appbar_widget.dart';
import '../../shared/widgets/drawer_widget.dart';
import '../../shared/widgets/scaffold_widget.dart';
import 'widgets/last_result_widget.dart';
import 'widgets/new_calc_floating_button_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultScaffoldWidget(
      appBar: DefaultAppbarWidget(),
      drawerWidget: DefaultDrawerWidget(),
      floatingActionButtonWidget: NewCalcFloatingButtonWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LastResultWidget(),
          ],
        ),
      ),
    );
  }
}
