import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Color? color;
  final void Function()? onTap;
  final Widget child;
  const MyButton({
    super.key,
    required this.color,
    required this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
