import 'package:flutter/material.dart';
import 'package:wut_app_user/config/app-colors.dart';
import 'package:wut_app_user/widgets/inputs/custom_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WUT APP'),
        centerTitle: true,
        backgroundColor: appColorScheme.primary,
        foregroundColor: appColorScheme.surfaceContainerHighest,
      ),
      body: _loginView(context),
    );
  }

  Widget _loginView(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 32),
                Text(
                  'Iniciar sesión',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SizedBox(height: 20),
          CustomFormField(
            label: 'Email',
            hint: 'Ingrese su email',
            prefixIcon: Icons.email,
          ),
          const SizedBox(height: 20),
          CustomFormField(
            label: 'Contraseña',
            hint: 'Ingrese su contraseña',
            prefixIcon: Icons.lock,
            obscureText: true,
          ),
          const SizedBox(height: 20),
          buttonLogin(),
        ],
      ),
    );
  }

  FilledButton buttonLogin() {
    return FilledButton.tonalIcon(
      onPressed: () {},
      icon: const Icon(Icons.login),
      label: const Text('Iniciar sesión'),
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(appColorScheme.primary),
        foregroundColor: WidgetStatePropertyAll(
          appColorScheme.surfaceContainerHighest,
        ),
      ),
    );
  }
}
