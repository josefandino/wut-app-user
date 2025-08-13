import 'package:flutter/material.dart';

class SectionCard extends StatelessWidget {
  const SectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [Text('Titulo'), Text('Subtitulo'), Text('Descripcion')],
        ),
      ),
    );
  }
}
