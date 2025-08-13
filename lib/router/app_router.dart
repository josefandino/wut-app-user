import 'package:go_router/go_router.dart';

// Routes publicas
import 'package:wut_app_user/screens/home_screen.dart';
import 'package:wut_app_user/screens/auth/login_screen.dart';

// Routes privadas
import 'package:wut_app_user/screens/panel/notifications.dart';
import 'package:wut_app_user/screens/panel/panel.dart';
import 'package:wut_app_user/screens/panel/profile.dart';

final appRouter = GoRouter(
  initialLocation: '/home/0',
  routes: [
    GoRoute(
      path: '/home/:page',
      name: 'home',
      builder: (context, state) =>
          HomeScreen(pageIndex: int.parse(state.pathParameters['page'] ?? '0')),
    ),

    // Routes publicas
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const LoginScreen(),
    ),

    // GoRoute(
    //   path: '/register',
    //   name: 'register',
    //   builder: (context, state) => const RegisterScreen(),
    // ),
    GoRoute(
      path: '/panel/:page',
      name: 'panel',
      builder: (context, state) => const PanelScreen(),
    ),
    GoRoute(
      path: '/profile',
      name: 'profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/notifications',
      name: 'notifications',
      builder: (context, state) => const NotificationsScreen(),
    ),
  ],
);
