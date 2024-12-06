import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> jobs = [
      {
        'title': 'Carpenter',
        'company': 'TechCorp',
        'image': 'assets/images/carpentry.jpg'
      },
      {
        'title': 'Painter',
        'company': 'DataSolutions',
        'image': 'assets/images/painted-building.jpg'
      },
      {
        'title': 'Contractor',
        'company': 'DesignHub',
        'image': 'assets/images/contractor.jpg'
      },
      {
        'title': 'Carpenter',
        'company': 'TechCorp',
        'image': 'assets/images/carpentry.jpg'
      },
      {
        'title': 'Painter',
        'company': 'DataSolutions',
        'image': 'assets/images/painted-building.jpg'
      },
      {
        'title': 'Contractor',
        'company': 'DesignHub',
        'image': 'assets/images/contractor.jpg'
      },
      {
        'title': 'Carpenter',
        'company': 'TechCorp',
        'image': 'assets/images/carpentry.jpg'
      },
      {
        'title': 'Painter',
        'company': 'DataSolutions',
        'image': 'assets/images/painted-building.jpg'
      },
      {
        'title': 'Contractor',
        'company': 'DesignHub',
        'image': 'assets/images/contractor.jpg'
      },
    ];

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
              leading: Image.asset(
                job['image']!,
                width: 80,
                height: 100,
              ),
              title: Text(
                job['title']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(job['company']!),
            ),
            
          );
        },
      ),
    );
  }
}
