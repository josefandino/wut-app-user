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
        'scheduleSubject': 'Enfermería',
        'scheduleTeacher': 'Dra. Rosalba Pereiro',
        'scheduleRoom': 'Aula 1',
        'linkSchedule': 'https://google.com',
        'userMeet': 'userMeet',
        'passwordMeet': 'passwordMeet',
      },
      {
        'scheduleStart': '2:00 pm',
        'scheduleEnd': '4:00 pm',
        'scheduleDay': 'Martes',
        'scheduleSubject': 'Comunicación',
        'scheduleTeacher': 'Dr. Abelardo Romero',
        'scheduleRoom': 'Aula 2',
        'linkSchedule': 'https://google.com',
        'userMeet': 'userMeet2',
        'passwordMeet': 'passwordMeet2',
      },
      {
        'scheduleStart': '2:00 pm',
        'scheduleEnd': '4:00 pm',
        'scheduleDay': 'Miércoles',
        'scheduleSubject': 'Concejería clínica',
        'scheduleTeacher': 'Dra. María Elena',
        'scheduleRoom': 'Aula 3',
        'linkSchedule': 'https://google.com',
        'userMeet': 'userMeet3',
        'passwordMeet': 'passwordMeet3',
      },
      {
        'scheduleStart': '2:00 pm',
        'scheduleEnd': '4:00 pm',
        'scheduleDay': 'Jueves',
        'scheduleSubject': 'Psicología',
        'scheduleTeacher': 'Dr. Juan Carlos',
        'scheduleRoom': 'Aula 4',
        'linkSchedule': 'https://google.com',
        'userMeet': 'userMeet4',
        'passwordMeet': 'passwordMeet4',
      },
      {
        'scheduleStart': '2:00 pm',
        'scheduleEnd': '4:00 pm',
        'scheduleDay': 'Viernes',
        'scheduleSubject': 'Filosofía bíblica',
        'scheduleTeacher': 'Dr. Pedro Rodríguez',
        'scheduleRoom': 'Aula 5',
        'linkSchedule': 'https://google.com',
        'userMeet': 'userMeet5',
        'passwordMeet': 'passwordMeet5',
      },
    ];

    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: schedule.length,
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
                          foregroundColor: colors.surfaceContainerHighest,
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
