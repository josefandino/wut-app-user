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
        'name': 'Curso de React Native',
        'teacher': 'Profesor 1',
        'duration': '3 meses',
        'link': 'https://google.com',
      },
      {
        'name': 'Curso de Angular',
        'teacher': 'Profesor 2',
        'duration': '2 meses',
        'link': 'https://google.com',
      },
      {
        'name': 'Curso de Flutter',
        'teacher': 'Profesor 3',
        'duration': '4 meses',
        'link': 'https://google.com',
      },
      {
        'name': 'Curso de NestJS',
        'teacher': 'Profesor 4',
        'duration': '5 meses',
        'link': 'https://google.com',
      },
      {
        'name': 'Curso de Python',
        'teacher': 'Profesor 5',
        'duration': '6 meses',
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
              shadowColor: Colors.grey.withOpacity(0.4),
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
                      'Duración: ${courses[index]['duration']}',
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
                        child: const Text('Ir al curso'),
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
