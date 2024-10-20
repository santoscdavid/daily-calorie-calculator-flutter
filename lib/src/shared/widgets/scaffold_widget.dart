import 'package:flutter/material.dart';

class DefaultScaffoldWidget extends StatelessWidget {
  const DefaultScaffoldWidget({
    super.key,
    required this.body,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0),
    this.appBar,
    this.bottomWidget,
    this.drawerWidget,
    this.floatingActionButtonWidget,
  });

  final Widget body;
  final EdgeInsetsGeometry padding;
  final PreferredSizeWidget? appBar;
  final Widget? bottomWidget;
  final Widget? drawerWidget;
  final Widget? floatingActionButtonWidget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      bottomNavigationBar: bottomWidget,
      drawer: drawerWidget,
      floatingActionButton: floatingActionButtonWidget,
      body: Padding(
        padding: padding,
        child: body,
      ),
    );
  }
}
