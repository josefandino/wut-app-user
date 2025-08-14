import 'package:flutter/material.dart';
import 'package:wut_app_user/config/app-colors.dart';
import 'package:wut_app_user/widgets/text/text.dart';

class ServicesPanel extends StatelessWidget {
  const ServicesPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = appColorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.grid_view, size: 24, color: colors.secondary),
              const SizedBox(width: 8),
              TitleText(title: 'Mis servicios'),
            ],
          ),
          const SizedBox(height: 12),
          _listCardServices(),
        ],
      ),
    );
  }

  Widget _listCardServices() {
    final colors = appColorScheme;
    final services = [
      {'title': 'Mi aula', 'icon': Icons.computer, 'route': '/classroom'},
      {
        'title': 'Biblioteca virtual',
        'icon': Icons.menu_book,
        'route': '/library',
      },
      {'title': 'Mis mensajes', 'icon': Icons.message, 'route': '/messages'},
      {'title': 'Matrícula', 'icon': Icons.assignment, 'route': '/enrollment'},
      {'title': 'Mis pagos', 'icon': Icons.payment, 'route': '/payments'},
      {
        'title': 'Calendario académico',
        'icon': Icons.calendar_month,
        'route': '/calendar',
      },
      {'title': 'Mis calificaciones', 'icon': Icons.grade, 'route': '/grades'},
    ];

    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: services.length,
        itemBuilder: (context, index) {
          return Container(
            width: 160,
            margin: const EdgeInsets.only(right: 12),
            child: InkWell(
              onTap: () {
                // Navegar a la ruta correspondiente
                // context.go(services[index]['route'] as String);
              },
              borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(color: colors.secondary, width: 1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      services[index]['icon'] as IconData,
                      size: 40,
                      color: colors.secondary,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      services[index]['title'] as String,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
