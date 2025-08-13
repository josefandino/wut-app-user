import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wut_app_user/config/app-colors.dart';
import 'package:wut_app_user/widgets/appbar_custom.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        title: 'Perfil',
        backgroundColor: appColorScheme.primary,
        foregroundColor: appColorScheme.surfaceContainerHighest,
        onBack: () => context.go('/panel/0'),
      ),
      body: const Center(child: Text('Perfil')),
    );
  }
}
