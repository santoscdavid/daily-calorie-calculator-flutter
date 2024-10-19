import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    super.key,
    required this.onPressed,
    required this.child,
    required this.isSelected,
  });

  final void Function()? onPressed;
  final Widget child;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return OutlinedButton(
      style: ButtonStyle(
        backgroundColor:
            isSelected ? MaterialStatePropertyAll(theme.primaryColor) : null,
        side: MaterialStatePropertyAll(
          BorderSide(color: theme.primaryColor),
        ),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.all(10),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}
