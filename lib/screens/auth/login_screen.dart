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
                    const Spacer(flex: 1),
                    const SizedBox(height: 32),
                    Text(
                      'Iniciar sesión',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 24),
                    LoginForm(),
                    const Spacer(flex: 3),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(height: 20),
          // Email
          CustomFormField(
            label: 'Email',
            hint: 'Ingresar email',
            prefixIcon: Icons.email,
            onChanged: (value) => email = value!,
            validator: (value) {
              if (value?.trim().isEmpty ?? true) {
                return 'El email no puede estar vacío';
              }
              if (value == null || value.isEmpty) {
                return 'El email es un campo requerido';
              }
              if (!emailRegExp.hasMatch(value)) {
                return 'El email no es válido';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          // Contraseña
          CustomFormField(
            label: 'Contraseña',
            hint: 'Ingresar contraseña',
            prefixIcon: Icons.lock,
            obscureText: true,
            onChanged: (value) => password = value!,
            validator: (value) {
              if (value?.trim().isEmpty ?? true) {
                return 'La contraseña no puede estar vacía';
              }
              if (value == null || value.isEmpty) {
                return 'La contraseña es un campo requerido';
              }
              if (value.trim().length < 6) {
                return 'La contraseña debe tener al menos 6 caracteres';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          // Botón de iniciar sesión
          buttonLogin(),
        ],
      ),
    );
  }

  FilledButton buttonLogin() {
    return FilledButton.tonalIcon(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          print('Email: $email');
          print('Contraseña: $password');
        }
      },
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
