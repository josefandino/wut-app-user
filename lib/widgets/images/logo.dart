import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double? height;
  final double? width;
  const Logo({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/webp/logo_wut.webp',
      height: height,
      width: width,
    );
  }
}
