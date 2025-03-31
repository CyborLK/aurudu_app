import 'package:flutter/material.dart';

class CompassDetailsScreen extends StatelessWidget {
  const CompassDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compass Details'),
        backgroundColor: const Color(0xFFBB0404),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Text(
            'Compass Details Screen\nDetails about the compass can go here.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontFamily: 'TharuDigitalNikini',
            ),
          ),
        ),
      ),
    );
  }
}