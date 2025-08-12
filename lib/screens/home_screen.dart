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

    // Espera 5s y redirige al login con go_router
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _timer = Timer(const Duration(seconds: 1), () {
        if (!mounted) return;
        context.goNamed('login');
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // buena práctica
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset('assets/webp/logo_wut.webp', width: 200),
                ),
              ],
            ),
            _infoHome(),
          ],
        ),
      ),
    );
  }

  Widget _infoHome() {
    return Center(
      child: Column(
        children: [
          Text(
            '!Te damos',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: appColorScheme.primary,
            ),
          ),
          Text(
            'la bienvenida',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: appColorScheme.primary,
            ),
          ),
          Text(
            'Tu futuro comienza aquí',
            style: TextStyle(fontSize: 24, color: appColorScheme.secondary),
          ),
        ],
      ),
    );
  }
}
