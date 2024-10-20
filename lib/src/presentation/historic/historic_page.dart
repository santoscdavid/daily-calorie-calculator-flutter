import 'package:flutter/material.dart';

import '../../shared/widgets/appbar_widget.dart';
import '../../shared/widgets/drawer_widget.dart';
import '../../shared/widgets/scaffold_widget.dart';

class HistoricPage extends StatelessWidget {
  const HistoricPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultScaffoldWidget(
      appBar: DefaultAppbarWidget(),
      drawerWidget: DefaultDrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [],
        ),
      ),
    );
  }
}
