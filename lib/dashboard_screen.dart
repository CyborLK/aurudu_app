import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to the Dashboard!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 5,
              child: ListTile(
                leading: const Icon(Icons.book, color: Colors.red),
                title: const Text('Read Novels'),
                subtitle: const Text('Explore the latest novels of 2025'),
                onTap: () {
                  // Add navigation or action here
                },
              ),
            ),
            const SizedBox(height: 10),
            Card(
              elevation: 5,
              child: ListTile(
                leading: const Icon(Icons.favorite, color: Colors.red),
                title: const Text('Favorites'),
                subtitle: const Text('View your favorite novels'),
                onTap: () {
                  // Add navigation or action here
                },
              ),
            ),
            const SizedBox(height: 10),
            Card(
              elevation: 5,
              child: ListTile(
                leading: const Icon(Icons.settings, color: Colors.red),
                title: const Text('Settings'),
                subtitle: const Text('Adjust your preferences'),
                onTap: () {
                  // Add navigation or action here
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}