import 'package:flutter/material.dart';

class ProgramListingScreen extends StatelessWidget {
  const ProgramListingScreen({super.key});

  final List<Map<String, String>> programs = const [
    {'title': 'Flutter Basics', 'description': 'Learn the fundamentals of Flutter.'},
    {'title': 'Advanced Dart', 'description': 'Deep dive into Dart programming.'},
    {'title': 'UI/UX Design', 'description': 'Create beautiful user interfaces.'},
    {'title': 'State Management', 'description': 'Manage app state effectively.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Programs'),
      ),
      body: ListView.builder(
        itemCount: programs.length,
        itemBuilder: (context, index) {
          final program = programs[index];
          return ListTile(
            title: Text(program['title']!),
            subtitle: Text(program['description']!),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/program_details',
                arguments: program,
              );
            },
          );
        },
      ),
    );
  }
}
