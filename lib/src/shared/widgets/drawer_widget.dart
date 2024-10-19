import 'package:flutter/material.dart';

class DefaultDrawerWidget extends StatelessWidget {
  const DefaultDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;

    return Drawer(
      backgroundColor: theme.appBarTheme.foregroundColor,
      width: 300,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          right: Radius.circular(10),
        ),
      ),
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const ClampingScrollPhysics(),
        children: [
          DrawerHeader(
            child: Column(
              children: [
                Icon(
                  Icons.local_fire_department,
                  color: theme.iconTheme.color,
                  size: 50,
                ),
                Text(
                  "CalcFit",
                  style: textTheme.headlineLarge,
                ),
              ],
            ),
          ),
          const Column(
            children: [
              DrawerItemWidget(
                title: "Início",
                icon: Icons.home,
                isActive: false,
              ),
              DrawerItemWidget(
                title: "Gráficos",
                icon: Icons.bar_chart,
                isActive: false,
              ),
              DrawerItemWidget(
                title: "Histórico",
                icon: Icons.history,
                isActive: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class DrawerItemWidget extends StatelessWidget {
  const DrawerItemWidget({
    super.key,
    this.onTap,
    required this.isActive,
    required this.icon,
    required this.title,
  });

  final String title;
  final Function()? onTap;
  final bool isActive;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 9, vertical: 2),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Ink(
          decoration: BoxDecoration(
            color: isActive
                ? theme.primaryColor
                : theme.drawerTheme.backgroundColor,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 14),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                icon,
                size: 25,
                color: isActive ? Colors.white : theme.iconTheme.color,
              ),
              const SizedBox(width: 20),
              Flexible(
                child: Text(
                  title,
                  textAlign: TextAlign.left,
                  style: textTheme.titleLarge!.copyWith(
                    color: isActive ? Colors.white : Colors.black,
                    fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
