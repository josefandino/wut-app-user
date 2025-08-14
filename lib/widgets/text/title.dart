import 'package:flutter/material.dart';
import 'package:wut_app_user/config/app-colors.dart';

class TitleText extends StatelessWidget {
  final String title;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color;

  const TitleText({
    super.key,
    required this.title,
    this.fontSize = 24,
    this.fontWeight = FontWeight.normal,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color ?? appColorScheme.primary,
      ),
    );
  }
}
