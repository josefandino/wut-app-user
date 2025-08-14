import 'package:flutter/material.dart';
import 'package:wut_app_user/config/app-colors.dart';
import 'package:wut_app_user/widgets/panel/panel_section.dart';

class PanelScreen extends StatefulWidget {
  const PanelScreen({super.key});

  @override
  State<PanelScreen> createState() => _PanelScreenState();
}

class _PanelScreenState extends State<PanelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Panel'),
        centerTitle: true,
        backgroundColor: appColorScheme.primary,
        foregroundColor: appColorScheme.surfaceContainerHighest,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderPanel(),
              const SizedBox(height: 12),
              BannerPanel(),
              const SizedBox(height: 12),
              SchedulePanel(),
              const SizedBox(height: 12),
              CoursesPanel(),
              const SizedBox(height: 12),
              ServicesPanel(),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
