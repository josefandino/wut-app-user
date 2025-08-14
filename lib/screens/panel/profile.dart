import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wut_app_user/config/app-colors.dart';
import 'package:wut_app_user/widgets/appbar_custom.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = appColorScheme;
    return Scaffold(
      appBar: AppBarCustom(
        title: 'Perfil',
        backgroundColor: color.primary,
        foregroundColor: color.surfaceContainerHighest,
        onBack: () => context.go('/panel/0'),
      ),
      body: _profileView(color),
    );
  }

  Widget _profileView(ColorScheme color) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // const Spacer(flex: 1),
                    const SizedBox(height: 12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 120,
                          height: 120,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: color.primary, width: 2),
                            // image: DecorationImage(
                            //   image: AssetImage('assets/webp/profile.webp'),
                            //   fit: BoxFit.cover,
                            // ),
                          ),
                          child: Icon(
                            Icons.person,
                            size: 120,
                            color: appColorScheme.secondary,
                          ),
                        ),
                        const SizedBox(height: 12),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Perfil',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: appColorScheme.primary,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    // const Spacer(flex: 2),
                    _logout(context),
                    // const Spacer(flex: 3),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _logout(BuildContext context) {
    return FilledButton.tonalIcon(
      icon: Icon(Icons.logout, color: appColorScheme.error, size: 24),
      onPressed: () => context.go('/home/0'),
      label: Text(
        'Cerrar sesión',
        style: TextStyle(color: appColorScheme.error),
      ),
    );
  }
}
