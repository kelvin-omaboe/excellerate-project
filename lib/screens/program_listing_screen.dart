import 'package:flutter/material.dart';

class ProgramListingScreen extends StatelessWidget {
  const ProgramListingScreen({super.key});

  final List<Map<String, String>> programs = const [
    {'title': 'Flutter Basics', 'description': 'Learn the fundamentals of Flutter.', 'icon': '📱'},
    {'title': 'Advanced Dart', 'description': 'Deep dive into Dart programming.', 'icon': '💻'},
    {'title': 'UI/UX Design', 'description': 'Create beautiful user interfaces.', 'icon': '🎨'},
    {'title': 'State Management', 'description': 'Manage app state effectively.', 'icon': '🔄'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Programs'),
        backgroundColor: Colors.green,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.green, Colors.greenAccent],
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: programs.length,
          itemBuilder: (context, index) {
            final program = programs[index];
            return Card(
              elevation: 4,
              margin: const EdgeInsets.only(bottom: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(16),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Text(
                    program['icon']!,
                    style: const TextStyle(fontSize: 24),
                  ),
                ),
                title: Text(
                  program['title']!,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                subtitle: Text(
                  program['description']!,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.green,
                ),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/program_details',
                    arguments: program,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
