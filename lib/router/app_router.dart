import 'package:go_router/go_router.dart';
import 'package:wut_app_user/screens/home_screen.dart';
import 'package:wut_app_user/screens/auth/login_screen.dart';
import 'package:wut_app_user/screens/auth/register_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/home/0',
  routes: [
    GoRoute(
      path: '/home/:page',
      name: 'home',
      builder: (context, state) =>
          HomeScreen(pageIndex: int.parse(state.pathParameters['page'] ?? '0')),
    ),

    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const LoginScreen(),
    ),

    GoRoute(
      path: '/register',
      name: 'register',
      builder: (context, state) => const RegisterScreen(),
    ),
  ],
);
