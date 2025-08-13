import 'package:flutter/material.dart';
import 'package:wut_app_user/config/app-colors.dart';

class BannerPanel extends StatelessWidget {
  const BannerPanel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          color: appColorScheme.primary,
          child: Image.asset(
            'assets/webp/facultad_divinidades.webp',
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
