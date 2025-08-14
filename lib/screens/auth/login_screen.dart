import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:wut_app_user/blocs/cubits/login/login_cubit.dart';
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
      body: BlocProvider(
        create: (context) => LoginCubit(),
        child: _loginView(context),
      ),
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
  const LoginForm({super.key});

  // String email = '';
  // String password = '';

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.watch<LoginCubit>();
    final email = loginCubit.state.email;
    final password = loginCubit.state.password;
    final username = loginCubit.state.username;

    return Form(
      child: Column(
        children: [
          const SizedBox(height: 20),
          // Username
          CustomFormField(
            label: 'Nombre de usuario',
            hint: 'Ingresar nombre de usuario',
            prefixIcon: Icons.person,
            onChanged: (value) => loginCubit.usernameChanged(value!),
            errorMessage: username.errorMessage,
          ),
          const SizedBox(height: 20),
          // Email
          CustomFormField(
            label: 'Email',
            hint: 'Ingresar email',
            prefixIcon: Icons.email,
            onChanged: (value) => loginCubit.emailChanged(value!),
            errorMessage: email.errorMessage,
          ),
          const SizedBox(height: 20),
          // Contraseña
          CustomFormField(
            label: 'Contraseña',
            hint: 'Ingresar contraseña',
            prefixIcon: Icons.lock,
            obscureText: true,
            onChanged: (value) => loginCubit.passwordChanged(value!),
            errorMessage: password.errorMessage,
          ),
          const SizedBox(height: 20),
          // Botón de iniciar sesión
          buttonLogin(context),
        ],
      ),
    );
  }

  // FilledButton buttonLogin(BuildContext context) {
  //   final colors = appColorScheme;
  //   print(context.read<LoginCubit>().state.formStatus);
  //   return FilledButton.tonalIcon(
  //     onPressed: () {
  //       context.read<LoginCubit>().onSubmit();
  //     },
  //     icon: const Icon(Icons.login),
  //     label: const Text('Iniciar sesión'),
  //     style: FilledButton.styleFrom(
  //       backgroundColor: colors.primary,
  //       foregroundColor: colors.surfaceContainerHighest,
  //       elevation: 2,
  //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  //       side: BorderSide(color: colors.primary, width: 1),
  //       padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
  //       minimumSize: const Size(48, 48),
  //     ),
  //   );
  // }

  FilledButton buttonLogin(BuildContext context) {
    final colors = appColorScheme;

    final formStatus = context.select(
      (LoginCubit cubit) => cubit.state.formStatus,
    );

    return FilledButton.tonalIcon(
      onPressed: () {
        context.go('/panel/0');
        context.read<LoginCubit>().onSubmit();
      },
      icon: const Icon(Icons.login),
      label: const Text('Iniciar sesión'),
      style: FilledButton.styleFrom(
        backgroundColor:
            formStatus == FormStatus.posting || formStatus == FormStatus.isValid
            ? colors.primary
            : Colors.grey,
        foregroundColor: colors.surfaceContainerHighest,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        side: BorderSide(
          color:
              formStatus == FormStatus.posting ||
                  formStatus == FormStatus.isValid
              ? colors.primary
              : Colors.grey,
          width: 1,
        ),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        minimumSize: const Size(48, 48),
      ),
    );
  }
}
