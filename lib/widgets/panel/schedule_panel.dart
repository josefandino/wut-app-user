import 'package:flutter/material.dart';
import 'package:wut_app_user/config/app-colors.dart';
import 'package:wut_app_user/widgets/text/text.dart';

class SchedulePanel extends StatelessWidget {
  const SchedulePanel({super.key});

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
              Icon(Icons.calendar_today, size: 24, color: colors.secondary),
              const SizedBox(width: 8),
              TitleText(title: 'Mis horarios'),
            ],
          ),
          const SizedBox(height: 12),
          _listCardSchedule(),
        ],
      ),
    );
  }

  Widget _listCardSchedule() {
    final colors = appColorScheme;
    final schedule = [
      {
        'scheduleStart': '8:00 am',
        'scheduleEnd': '12:00 pm',
        'scheduleDay': 'Lunes',
        'scheduleSubject': 'Matemáticas',
        'scheduleTeacher': 'Profesor 1',
        'scheduleRoom': 'Aula 1',
        'linkSchedule': 'https://google.com',
        'userMeet': 'userMeet',
        'passwordMeet': 'passwordMeet',
      },
      {
        'scheduleStart': '2:00 pm',
        'scheduleEnd': '4:00 pm',
        'scheduleDay': 'Martes',
        'scheduleSubject': 'Física',
        'scheduleTeacher': 'Profesor 2',
        'scheduleRoom': 'Aula 2',
        'linkSchedule': 'https://google.com',
        'userMeet': 'userMeet2',
        'passwordMeet': 'passwordMeet2',
      },
    ];

    return SizedBox(
      height: 180, // altura fija para evitar errores
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: schedule.length,
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
                      title: schedule[index]['scheduleSubject'] as String,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      schedule[index]['scheduleTeacher'] as String,
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${schedule[index]['scheduleDay']} • ${schedule[index]['scheduleStart']} - ${schedule[index]['scheduleEnd']}',
                      style: TextStyle(fontSize: 13, color: colors.secondary),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // abrir enlace
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: colors.primary,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text('Unirse a la clase'),
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
