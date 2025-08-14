import 'package:flutter/material.dart';
import 'package:wut_app_user/config/app-colors.dart';
import 'package:wut_app_user/widgets/text/text.dart';

class CoursesPanel extends StatelessWidget {
  const CoursesPanel({super.key});

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
              Icon(Icons.book, size: 24, color: colors.secondary),
              const SizedBox(width: 8),
              TitleText(title: 'Mis cursos'),
            ],
          ),
          const SizedBox(height: 12),
          _listCardCourses(),
        ],
      ),
    );
  }

  Widget _listCardCourses() {
    final colors = appColorScheme;
    final courses = [
      {
        'name': 'Enfermería',
        'teacher': 'Dra. Rosalba Pereiro',
        'ciclo': '1',
        'link': 'https://google.com',
      },
      {
        'name': 'Comunicación',
        'teacher': 'Dr. Abelardo Romero',
        'ciclo': '1',
        'link': 'https://google.com',
      },
      {
        'name': 'Concejería clínica',
        'teacher': 'Dra. María Elena',
        'ciclo': '1',
        'link': 'https://google.com',
      },
      {
        'name': 'Psicología',
        'teacher': 'Dr. Juan Carlos',
        'ciclo': '1',
        'link': 'https://google.com',
      },
      {
        'name': 'Filosofía bíblica',
        'teacher': 'Dr. Pedro Rodríguez',
        'ciclo': '1',
        'link': 'https://google.com',
      },
    ];

    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return Container(
            width: 250,
            margin: const EdgeInsets.only(right: 12),
            child: Card(
              elevation: 3,
              shadowColor: Colors.grey.withValues(alpha: 0.4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleText(
                      title: courses[index]['name'] as String,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      courses[index]['teacher'] as String,
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Ciclo: ${courses[index]['ciclo']}',
                      style: TextStyle(fontSize: 13, color: colors.secondary),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // abrir enlace del curso
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: colors.primary,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text('Info del curso'),
                      ),
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
