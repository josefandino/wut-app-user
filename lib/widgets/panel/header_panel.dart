import 'package:flutter/material.dart';

import 'package:wut_app_user/config/app-colors.dart';
import 'package:wut_app_user/widgets/buttons/button_circular.dart';
import 'package:wut_app_user/widgets/images/logo.dart';

class HeaderPanel extends StatelessWidget {
  const HeaderPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = appColorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Logo(height: 40),
          Row(
            children: [
              CircularButton(
                icon: Icons.person,
                route: '/profile',
                borderColor: colors.primary,
                height: 40,
                width: 40,
                iconSize: 32,
              ),
              // const SizedBox(width: 2),
              CircularButton(
                icon: Icons.notifications,
                route: '/notifications',
                borderColor: colors.primary,
                height: 40,
                width: 40,
                iconSize: 32,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
