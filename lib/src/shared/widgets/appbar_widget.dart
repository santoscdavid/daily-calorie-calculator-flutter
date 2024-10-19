import 'package:flutter/material.dart';

class DefaultAppbarWidget extends StatefulWidget
    implements PreferredSizeWidget {
  const DefaultAppbarWidget({
    super.key,
    this.hasReturn = false,
    this.onPressedReturn,
  });

  final bool hasReturn;
  final Function()? onPressedReturn;

  @override
  State<DefaultAppbarWidget> createState() => _DefaultAppbarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

class _DefaultAppbarWidgetState extends State<DefaultAppbarWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
      leading: Builder(builder: (context) {
        return ElevatedButton(
          onPressed: widget.hasReturn
              ? widget.onPressedReturn
              : () => Scaffold.of(context).openDrawer(),
          style: ElevatedButton.styleFrom(
            backgroundColor: theme.primaryColor,
            padding: EdgeInsets.only(left: widget.hasReturn ? 9 : 0),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            elevation: 0,
          ),
          child: Icon(
            widget.hasReturn ? Icons.arrow_back_ios : Icons.menu,
            color: Colors.white,
          ),
        );
      }),
    );
  }
}
