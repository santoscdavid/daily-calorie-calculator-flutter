import 'package:flutter/material.dart';

class DefaultAppbarWidget extends StatefulWidget implements PreferredSizeWidget {
  const DefaultAppbarWidget({
    super.key,
    this.actions,
  });

  final List<Widget>? actions;

  @override
  State<DefaultAppbarWidget> createState() => _DefaultAppbarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

class _DefaultAppbarWidgetState extends State<DefaultAppbarWidget> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return AppBar(
      title: Row(
        children: [
          Text(
            "CalcFit",
            style: textTheme.titleLarge!.copyWith(color: Colors.white),
          ),
          const Icon(
            Icons.local_fire_department,
            color: Colors.white,
          ),
        ],
      ),
      elevation: 10,
    );
  }
}
