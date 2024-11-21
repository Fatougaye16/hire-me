import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> jobs = [
      {'title': 'Software Engineer', 'company': 'TechCorp'},
      {'title': 'Data Analyst', 'company': 'DataSolutions'},
      {'title': 'UI/UX Designer', 'company': 'DesignHub'},
    ];
    //display jobs
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListView.builder(
        itemCount: jobs.length,
        itemBuilder: (context, index) {
          final job = jobs[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            elevation: 4,
            child: ListTile(
              leading: const Icon(Icons.work, color: Color.fromARGB(255, 32, 32, 32)),
              title: Text(
                job['title']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('text'),
            ),
          );
        },
      ),
    );
  }
}
