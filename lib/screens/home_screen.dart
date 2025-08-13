import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wut_app_user/config/app-colors.dart';

class HomeScreen extends StatefulWidget {
  final int pageIndex;
  const HomeScreen({super.key, required this.pageIndex});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    // Cambiá la duración si querés otro delay
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer(const Duration(seconds: 1), () {
        if (!mounted) return;
        context.goNamed('login');
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WUT APP'),
        centerTitle: true,
        backgroundColor: appColorScheme.primary,
        foregroundColor: appColorScheme.surfaceContainerHighest,
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Image.asset('assets/webp/logo_wut.webp', height: 90),
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '!Te damos',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: appColorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'la bienvenida',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: appColorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Tu futuro comienza aquí',
                      style: TextStyle(
                        fontSize: 24,
                        color: appColorScheme.secondary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
