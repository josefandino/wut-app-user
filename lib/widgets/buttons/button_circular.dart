import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CircularButton extends StatelessWidget {
  final IconData icon;
  final String route;
  final Color borderColor;
  final double height;
  final double width;
  final double iconSize;

  const CircularButton({
    super.key,
    required this.icon,
    required this.route,
    required this.borderColor,
    required this.height,
    required this.width,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () => context.go(route),
      style: FilledButton.styleFrom(
        backgroundColor: Colors.transparent,
        foregroundColor: borderColor,
        elevation: 0,
        shape: const CircleBorder(),
        side: BorderSide(color: borderColor, width: 1),
        fixedSize: Size(width, height),
        padding: EdgeInsets.zero,
      ),
      child: Icon(icon, size: iconSize),
    );
  }
}
